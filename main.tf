terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  cloud {
    organization = "stagging-env"

    workspaces {
      name = "gh-action"
    }
  }
}

provider "aws" {
  region = var.region
}
