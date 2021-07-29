variable "aws_region" { default = "us-east-1" }
variable "vpc_cidr_block" { default = "${var.vpc_cidr_block}" }
variable "aws_az" {default = "${var.aws_az}"}
variable "vpc_tag" { default = "${var.vpc_tag}"}
variable "subnet_tag" { default = "${var.subnet_name}"}
