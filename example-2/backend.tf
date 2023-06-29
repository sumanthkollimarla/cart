terraform {
  backend "s3" {
    bucket = "sumanth-tf"
    key    = "example2/terraform.tfstate"
    region = "us-east-1"
  }
}