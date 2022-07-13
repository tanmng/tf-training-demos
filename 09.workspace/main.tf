resource "local_file" "this" {
  content  = "${terraform.workspace}-content!"
  filename = "${path.module}/foo_${terraform.workspace}"
}
