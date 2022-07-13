resource "local_file" "foo" {
  content  = "foo-content!"
  filename = "${path.module}/foo"
}

resource "local_file" "bar" {
  content  = local_file.foo.content
  filename = "${path.module}/bar"
}
