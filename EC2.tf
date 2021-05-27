terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0cf6f5c8a62fa5da6"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
