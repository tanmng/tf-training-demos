resource "local_file" "foo" {
  content  = "foo-content!"
  filename = "${path.module}/foo"

  depends_on = [
    local_file.bar
  ]
}

resource "local_file" "bar" {
  content  = "foo-content!"
  filename = "${path.module}/foo"
}
