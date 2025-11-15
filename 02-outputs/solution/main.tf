variable "name" {
  description = "Your name"
  type        = string
}

locals {
  greeting = "Hello, ${var.name}"
}

output "my_output" {
  value       = local.greeting
  description = "The greeting output"
}