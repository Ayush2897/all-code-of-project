terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6BGYQSZVYWCY75X2"
  secret_key = "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"

  default_tags {
    tags = {
      Name        = "Provider Tag"
      Environment = "Test"
      Created_for = "Terraform"
    }
  }
}