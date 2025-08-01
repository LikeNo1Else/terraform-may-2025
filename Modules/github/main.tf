terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
 
provider "aws" {
  region = "us-east-1"
}


module "may" {
  source  = "git@github.com:LikeNo1Else/terraform-vpc-may.git?ref=v2.0.0"
  vpc_cidr = "172.31.0.0/16"
  subnet1_cidr = "172.31.1.0/24"
  subnet2_cidr = "172.31.2.0/24" 
  subnet3_cidr = "172.31.3.0/24"
  vpc_name = "kaizen"
}

