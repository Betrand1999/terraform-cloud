terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  cloud {

    organization = "my-terraform-cloud-organization"

    workspaces {
      name = "my-workspace"
    }
  }
}
