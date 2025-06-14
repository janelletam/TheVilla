terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}


# Create a simple storage bucket for testing
resource "aws_s3_bucket" "test_bucket" {
  bucket = "memory-village-test-${random_id.bucket_suffix.hex}"
}

# This creates a random string so bucket names don't conflict
resource "random_id" "bucket_suffix" {
  byte_length = 4
}