#AWS em US-East-Ohio
provider "aws" {
access_key = "XXXXXXXXXXXX"
secret_key = "XXXXXXXXXXXXXXXXXXXXXX"
region = "us-east-1"
}
resource "aws_instance" "webserver" {
  ami = "ami-0b898040803850657"
  instance_type = "t2.micro"
}
