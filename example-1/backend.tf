terraform {
  backend "s3" {
    bucket = "sumanth-tf"
    key    = "example1/terraform.tfstate"
    region = "us-east-1"
  }
}