resource "aws_vpc" "VPC" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "VPC-DevOps"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "First Subnet -  Public"
  }
}