terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-southeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0310483fb2b488153"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
