resource "aws_s3_bucket" "this" {
    bucket = "foo"
}

resource "local_file" "this" {
  content  = "foo-content!"
  filename = "${path.module}/foo"
}

terraform {
    required_providers {
        aws  = {}
    }
}
