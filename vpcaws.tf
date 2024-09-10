provider "aws" {
access_key = "XXXXXXXXXXXX"
secret_key = "XXXXXXXXXXXXXXXXXXXXXX"
region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "main"
  }
}
