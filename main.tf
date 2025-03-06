




provider "aws" {
  region="us-east-1"
   profile = "default"
}

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


resource "aws_s3_bucket" "bucket_test" {
  bucket = "mghamdi-bucket-1234abcd"

  tags = {
    Name        = "My bucket 1"
  }
}

resource "aws_instance" "myec2_Public" {
  ami           = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  associate_public_ip_address = true
   
}




 