resource "aws_s3_bucket" "this" {
  bucket = "random-name-generated"
}

module "sub" {
  source      = "./module"
  bucket_name = aws_s3_bucket.this.bucket
}
