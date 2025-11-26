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

locals {
  my_list = [
    "apple",
    "banana",
    "cherry",
    "date",
    "elderberry",
    "fig",
    "grape",
    "honeydew",
    "kiwi",
    "lemon"
  ]
}

resource "random_integer" "random" {
  min = 0
  max = length(local.my_list) - 1
}

output "my_list" {
  value = local.my_list
}

output "random_integer" {
  value = random_integer.random.result
}

output "random_string" {
  value = local.my_list[random_integer.random.result]
}