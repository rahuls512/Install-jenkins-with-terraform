# configured aws provider and backend with proper credentials
provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::640111764884:role/stsassume-role"
    session_name = "terraform-sts"
  }
}
terraform {
  backend "s3" {
    bucket         = "rs-terraform-statefile"
    key            = "terraform-statefile"
    region         = "us-east-1"
    role_arn       = "arn:aws:iam::640111764884:role/stsassume-role"
    dynamodb_table = "rs-terraform-statetable"
  }
}