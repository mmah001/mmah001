terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  access_key = "AKIAQBB3LYJECAR6UBZN"
  secret_key = "Ke+EKG+2HEK9t+dN7liUFdEQS5C8cWm9NV6lA9by"
  region  = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0cf6f5c8a62fa5da6"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
