terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
 

provider "aws" {
  region = var.region
}


resource "aws_key_pair" "deployer" {
 key_name = var.key_name
 public_key = file("~/.ssh/id_rsa.pub")

}
