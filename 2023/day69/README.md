# Day 69 - Meta-Arguments in Terraform

When defining a resource block in Terraform, the default behavior is to specify the creation of one resource. To efficiently manage multiple instances of the same resource, Terraform provides meta-arguments like `count`, `for_each`, `depend_on`, `provider`, and `lifecycle`. Utilizing these options reduces redundancy in your code and enhances its clarity.

## Count

The `count` meta-argument accepts a whole number and generates the specified number of resource instances. Each instance created has its own distinct infrastructure object, enabling independent management during application, updates, or destruction.

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "server" {
  count = 4

  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${count.index}"
  }
}
```

## for_each

Similar to `count`, the `for_each` meta-argument creates multiple instances, but it accepts a map or set of strings. This is particularly useful when different values are needed for each resource, such as in the case of Active Directory groups with varying owners.

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

locals {
  ami_ids = toset([
    "ami-0b0dcb5067f052a63",
    "ami-08c40ec9ead489470",
  ])
}

resource "aws_instance" "server" {
  for_each = local.ami_ids

  ami           = each.key
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${each.key}"
  }
}

# Multiple key-value iteration
locals {
  ami_ids = {
    "linux"  = "ami-0b0dcb5067f052a63",
    "ubuntu" = "ami-08c40ec9ead489470",
  }
}

resource "aws_instance" "server" {
  for_each = local.ami_ids

  ami           = each.value
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${each.key}"
  }
}
```

## depend_on

The `depend_on` meta-argument ensures proper sequencing during resource creation and updates. It specifies explicit dependencies between resources.

```hcl
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

resource "aws_security_group" "example_sg" {
  name        = "example-sg"
  description = "Example Security Group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Explicitly depend on the aws_instance resource
  depends_on = [aws_instance.example]
}
```

## provider

The `provider` meta-argument specifies the provider alias for a particular resource, allowing the use of multiple providers of the same type within a configuration.

```hcl
provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "mumbai"
  region = "ap-south-1"
}

resource "google_compute_instance" "example" {
  provider = aws.mumbai
}
```

## lifecycle

The `lifecycle` meta-argument defines the lifecycle for the resource. It provides advanced control over resource creation, updates, and destruction.

```hcl
resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
    prevent_destroy       = false
    ignore_changes        = [tags]
  }
}
```

## Task-01

- Implement the above Infrastructure as Code and showcase the usage of `count`, `for_each`, `depend_on`, `provider`, and `lifecycle`.
- Write about meta-arguments and their utility in Terraform.

Read more on my [blog](https://devxblog.hashnode.dev/meta-arguments-in-terraform).

Happy learning! 🙂
