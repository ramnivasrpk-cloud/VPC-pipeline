terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "ramdev18"
    key    = "vpc-ec2/terraform.tfstate"
    region = "ap-south-1a"
  }
}

provider "aws" {
  region = "ap-south-1"
}
