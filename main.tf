provider "aws" {
  region = var.aws_region
}

locals {
  environment = terraform.workspace
}

resource "aws_s3_bucket" "example" {
  bucket = "tf-cicd-bucket-${local.environment}-${random_id.suffix.hex}"
  force_destroy = true

  tags = {
    Environment = local.environment
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}
