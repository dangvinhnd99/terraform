provider "aws" {
  region  = "us-east-1"
}
resource "aws_instance" "web"{
  key_name = "vinh_key"
  ami = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"

  tags = {
  Name = "HelloWorld"
  }
}
resource "aws_s3_bucket" "terraform-bucket"{
  bucket = "terraform-series-bucket"
  tags = {
    Name = "vinh23859823562"
    }
  }

