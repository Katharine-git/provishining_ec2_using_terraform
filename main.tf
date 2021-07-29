#create vpc
resource "aws_vpc" "ust_Katharine" {
  cidr_block = "${var.vpc_cidr_block}"

 tags={
    Name = "${var.vpc_tag}"
  } 
}

#create subnet
resource "aws_subnet" "ust_subnet" {
  vpc_id            = aws_vpc.ust_Katharine.id
  cidr_block        = "${var.vpc_cidr_block}"
  availability_zone = "${var.aws_az}"

  tags={
    Name = "${var.subnet_name}"
  }
}