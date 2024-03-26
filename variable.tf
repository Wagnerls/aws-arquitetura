provider "aws" {
  region = var.region
}

resource "aws_instance" "control_instance" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = "kp_devops_fest"

  tags = {
    Name = "control-ec2-mdc"
  }

  vpc_security_group_ids = [
    aws_security_group.allow_ssh_control.id,
    aws_security_group.allow_http_control.id
  ]
}

resource "aws_instance" "worker_instance" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = "kp_devops_fest"

  tags = {
    Name = "worker-ec2-mdc"
  }

  vpc_security_group_ids = [
    aws_security_group.allow_ssh_worker.id,
    aws_security_group.allow_http_worker.id
  ]
}

resource "aws_security_group" "allow_ssh_control" {
  name        = "allow_ssh_control"
  description = "Allow inbound SSH traffic for control instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_http_control" {
  name        = "allow_http_control"
  description = "Allow inbound HTTP traffic for control instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_ssh_worker" {
  name        = "allow_ssh_worker"
  description = "Allow inbound SSH traffic for worker instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_http_worker" {
  name        = "allow_http_worker"
  description = "Allow inbound HTTP traffic for worker instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
