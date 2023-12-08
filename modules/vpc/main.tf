resource "aws_vpc" "main_vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = format("%s_vpc_%s", var.name, var.env)
  }
}

resource "aws_subnet" "main_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.subnet_avail_zone
  tags = {
    Name = format("%s_subnet_%s", var.name, var.env)
  }
}

resource "aws_security_group" "main_security_group" {
  name        = format("%s_security_group_%s", var.name, var.env)
  description = "Security group for ${var.name}"
  vpc_id      = aws_vpc.main_vpc.id

  ingress {
    from_port   = var.sg_port
    to_port     = var.sg_port
    protocol    = "tcp"
    cidr_blocks = [var.subnet_cidr_block]  # Allow only from the subnet
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
