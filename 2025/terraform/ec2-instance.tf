# Key Pair (Login)

resource aws_key_pair my_key {
    key_name = "terra-key-ec2"
    public_key = file("terra-key-ec2.pub")
}

# VPC & Security Group

resource aws_default_vpc default {}

resource aws_security_group my_security_group {
    name = "automate-sg"
    description = "This is a TF generated Security Group"
    vpc_id = aws_default_vpc.default.id # Interpolation

    # InBound Rules

    # 1. Port 22
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "SSH Open "
    }

    # 2. Port 80
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "HTTP Open"
    }
    
    # 3. Port 8000
    ingress {
        from_port = 8000
        to_port = 8000
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Flask App"
    }


    # OutBound Rules
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "all access open outbound"
    }

    tags = {
        Name = "automate-sg"
    }
}

# EC 2 Instance

resource "aws_instance" "my_instance" {
    key_name = aws_key_pair.my_key.key_name
    vpc_security_group_ids = [aws_security_group.my_security_group.id]
    instance_type = "t2.micro"
    ami = "ami-03fd334507439f4d1" # Ubuntu
    user_data = file("install_nginx.sh")

    root_block_device {
        volume_size = 15
        volume_type = "gp3"
    }

    tags = {
        Name = "TWS-Junoon-automate"

    }
}