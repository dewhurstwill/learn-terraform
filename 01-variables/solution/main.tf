terraform {
  required_version = ">= 1.0.0"
}

variable "my_string_variable" {
  description = "An example string variable"
  type        = string
  default     = "Hello, Terraform"
}

variable "my_number_variable" {
  description = "An example number variable"
  type        = number
  default     = 42
}

variable "my_list_variable" {
  description = "An example list variable"
  type        = list(string)
  default     = ["apple", "banana", "cherry"]
}

variable "my_map_variable" {
  description = "An example map variable"
  type        = map(string)
  default     = {
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
  }
}

variable "my_bool_variable" {
  description = "An example boolean variable"
  type        = bool
  default     = true
}

variable "my_secret_variable" {
  description = "An example secret variable"
  type        = string
  sensitive   = true
}

locals {
  my_constant       = "This is a constant string"
  my_local_variable = "${var.my_string_variable} - Local Variable"
  my_list_length    = length(var.my_list_variable)
}