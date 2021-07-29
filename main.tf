provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
resource "aws_vpc" "ust_Katharine" {
  cidr_block = var.vpc_cidr_block
}
resource "aws_subnet" "ust_subnet" {
  vpc_id            = aws_vpc.ust_Katharine.id
  cidr_block        = var.vpc_cidr_block
  availability_zone = var.aws_az
}
resource "aws_security_group" "ust_sg" {
  name   = "HTTP and SSH"
  vpc_id = aws_vpc.ust_Katharine.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "ustInstance" {
  ami           = var.aws_ami
  instance_type = "t2.micro"
  key_name      = var.aws_key_name
  subnet_id     = aws_subnet.ust_subnet.id

  tags = {
    Name = "Linux-VM"
  }
}
