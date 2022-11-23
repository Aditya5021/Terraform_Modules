#This is an example for terraform provider that should be added just before modules in the modules file or can be copied to the same folder as the module main.tf file

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-east-1"
}