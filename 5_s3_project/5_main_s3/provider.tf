terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "eu-central-1"
  access_key = "AKIA6BGYQSZV6S5RDTKQ"
  secret_key = "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"
}

