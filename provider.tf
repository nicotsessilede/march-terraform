terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.1"
    }
  }
    backend "s3" {
    bucket = "tfstate-nico"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    profile = "tf"
    dynamodb_table = "tfstate"
  }
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "tf"
}