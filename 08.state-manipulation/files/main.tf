resource "local_file" "this" {
  content  = "foo-content!"
  filename = "${path.module}/foo"
}
