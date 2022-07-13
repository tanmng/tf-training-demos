# Normal backend config
/*
terraform {
  backend "s3" {
    bucket         = "random-87f02a5c2d329d5c"
    dynamodb_table = "something-something-something-dark-side"
    key            = "us-east-1.terraform.tfstate"
    region         = "us-east-1"
  }
}
*/

# Will not work - require interpolation
/*
terraform {
  backend "s3" {
    bucket         = "random-87f02a5c2d329d5c"
    dynamodb_table = "something-something-something-${var.env}"
    key            = "us-east-1.terraform.tfstate"
    region         = "us-east-1"
  }
}

*/
