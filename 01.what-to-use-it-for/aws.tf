resource "aws_instance" "this" {
  ami           = "ami-xxxxxxxxxx"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}