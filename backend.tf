terraform {
  backend "s3" {
    bucket         = "ashok-5b3"        # You'll create this soon
    key            = "cicd/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "my-tf-locking"          # You'll create this too
    encrypt        = true
  }
}
