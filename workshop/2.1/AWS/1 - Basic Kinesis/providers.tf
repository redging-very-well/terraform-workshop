terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.40.0"
    }
  }

  backend "local" {
    path = "../state/terraform.tfstate"
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

