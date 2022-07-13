resource "local_file" "this" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}
