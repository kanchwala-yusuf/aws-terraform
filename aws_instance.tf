#provider "aws" {
#  region = "us-west-2"
#}

resource "aws_instance" "instanceWithNoVpc" {
  ami           = "some-id"
  instance_type = "t2.micro"
  
  tags = {
    Name = "HelloWorld"
  }
}
