










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




 
