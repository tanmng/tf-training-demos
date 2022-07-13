variable "bucket_name" {
type = string
description = "Name of the S3 bucket where we wish to set up the notification"
}

resource "aws_s3_bucket_notification" "this" {
  bucket = var.bucket_name
  eventbridge = true
}
