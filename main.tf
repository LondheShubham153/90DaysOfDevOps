variable "aws_region" {
  description = "The AWS region where resources will be provisioned."
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The EC2 instance type to be used in the auto-scaling group."
  default     = "t2.micro"
}

variable "vpc_id" {
  description = "The ID of the VPC where your EC2 instances reside."
  default     = "vpc-0150f7feb6ac5d65c"
}

variable "ssl_certificate_arn" {
  description = "The ARN of the SSL certificate from AWS Certificate Manager (ACM)."
  default     = "arn:aws:acm:us-east-1:206458525852:certificate/8ee1e88c-1017-47a9-b0c3-fc50417ff66b"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web_server" {
  ami           = "ami-053b0d53c279acc90" // Replace with your desired AMI ID
  instance_type = var.instance_type
  count         = 3 // Number of instances you want to create

  key_name      = "your-key-pair-name" // Replace with the name of your SSH key pair

  tags = {
    Name = "WebServerInstance-${count.index + 1}"
  }

  // Add more configuration as needed for your instances
}


resource "aws_lb" "web_alb" {
  name               = "my-web-alb"
  internal           = false
  load_balancer_type = "application"

  subnets = [var.subnet_ids] // Replace with the subnet IDs where you want to deploy the ALB

  security_groups = [var.alb_security_group_id] // Replace with the security group ID for the ALB

  tags = {
    Name = "WebLoadBalancer"
  }
}

resource "aws_lb_target_group" "web_target_group" {
  name        = "web-target-group"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.vpc_id // Replace with the VPC ID where your instances are located

  health_check {
    path = "/"
  }

  tags = {
    Name = "WebTargetGroup"
  }
}

resource "aws_lb_target_group_attachment" "web_target_attachment" {
  target_group_arn = aws_lb_target_group.web_target_group.arn
  target_id        = aws_instance.web_server.*.id
  port             = 80
}

resource "aws_lb_listener" "web_listener" {
  load_balancer_arn = aws_lb.web_alb.arn
  port              = 443
  protocol          = "HTTPS"

  default_action {
    target_group_arn = aws_lb_target_group.web_target_group.arn
    type             = "forward"
  }
}

resource "aws_lb_listener_certificate" "web_listener_cert" {
  listener_arn    = aws_lb_listener.web_listener.arn
  certificate_arn = var.ssl_certificate_arn
}

resource "aws_autoscaling_group" "web_asg" {
  launch_configuration = aws_launch_configuration.web_lc.name
  availability_zones   = [var.aws_region + "a", var.aws_region + "b", var.aws_region + "c"] // Same AZs as ALB
  min_size             = 3 // Minimum number of instances in the group
  max_size             = 5 // Maximum number of instances in the group
  desired_capacity     = 3 // Desired number of instances to maintain

  tags = [
    {
      key                 = "Name"
      value               = "WebAutoScalingGroup"
      propagate_at_launch = true
    }
  ]
  
  // Add more auto-scaling configuration as needed
}

output "alb_dns_name" {
  value = aws_lb.web_alb.dns_name
}

data "aws_subnet_ids" "selected_subnets" {
  vpc_id = var.vpc_id
}

output "subnet_ids" {
  value = data.aws_subnet_ids.selected_subnets.ids
}

