terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1" 
    }
  }

  required_version = ">= 1.0.0"
}

provider "random" {}