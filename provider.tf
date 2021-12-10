terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.61.0"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
    region = "us-east-1"
    
}

terraform {
  backend "s3" {
    bucket = "amalachitta"
    key    = "notepad/documents/money"
    region = "us-east-1"
  }
}