# Everything to set up infrastructure
variable "env" {
  type        = string
  description = "Tell us what environment to use this code for"
  validation {
    condition     = contains(["dev", "prod"], var.env)
    error_message = "Must be either dev or prod."
  }
  validation {
    condition     = length(var.env) > 3
    error_message = "Length must be more than 3."
  }
}

variable "foo" {
  type        = number
  description = "How many tasks to run"
  validation {
    condition     = var.env == "dev"? var.foo < 5 : var.foo > 10
    error_message = "For dev, less than 5 tasks and for prod more than 10."
  }
}


locals {
    task_count = var.env == "prod"? 100 : 20
}
