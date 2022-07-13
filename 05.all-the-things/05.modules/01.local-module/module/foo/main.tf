variable "name" {
  type        = string
  description = "The name of the person who we should be communicating with"
}

locals {
  greeting_word = var.name == "Satan" ? "Hail" : "Hello"
  greeting      = "${local.greeting_word}, ${var.name}"
  possession    = "${var.name}'s vehicle"
}

output "greeting" {
  description = "The greeting to send to that person"
  value       = local.greeting
}
