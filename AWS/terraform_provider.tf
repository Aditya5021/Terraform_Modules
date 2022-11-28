##This is an example for terraform provider that should be added just before modules in the modules file or can be copied to the
##same folder as the module main.tf file

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
}

##Configuring the AWS Provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"

  ##These two are to be used when you are hardcoding the access key and secret key to the code. Best practice should be to avoid
  ##adding these manually and creating a profile using "aws configure" command and using that profile name
  #access_key = "my-access-key"
  #secret_key = "my-secret-key"

  default_tags {
    tags = {
      Created-By = "Aditya"
    }
  }
}