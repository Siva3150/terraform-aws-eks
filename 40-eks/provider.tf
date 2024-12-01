terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.75.0"
    }
  }
  
  backend "s3" {
    bucket = "sivadevops-remote-state"
    key    = "expense-sg"
    region = "us-east-1"
    dynamodb_table = "sivadevops-locking"
  }
  
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}