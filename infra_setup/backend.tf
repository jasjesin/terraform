terraform {
  backend "s3" {
    bucket = "tf-sensitive"
    region = "us-east-1"
    key    = "tf/terraform.tfstate"
  }
}