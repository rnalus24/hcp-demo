terraform {
  required_version = "1.12.2" # Replace with your installed version

  cloud {
    organization = "rnalus24"
    hostname     = "app.terraform.io" # Replace with your Terraform Cloud hostname if different

    workspaces {
      name    = "hcp-demo"
      project = "learning-terraform"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.31.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
