terraform {

  required_version = ">= 1.6.6"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.95"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.38.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.17"
    }
  }

  backend "s3" {
    bucket = "terraformeksmodern"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}