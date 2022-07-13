resource "aws_s3_bucket" "this" {
  bucket = "random-name-generated"
}

resource "aws_s3_bucket_notification" "this" {
  bucket      = aws_s3_bucket.this.bucket
  eventbridge = true
}
