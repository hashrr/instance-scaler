terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
  }
  backend "s3" {
    bucket       = "hagowda-terraform-statefiles-07061997"
    key          = "instance-scaler/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
  }
}

provider "aws" {
  region = "us-west-1"
  default_tags {
    tags = {
      "project"     = "instance-scaler"
      "auto-delete" = "no"
    }
  }
}
