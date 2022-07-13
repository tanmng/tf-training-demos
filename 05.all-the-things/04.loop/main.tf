resource "local_file" "this" {
  count = 3
  filename = "${path.module}/foo_${count.index}"
  content = "File number ${count.index}"
}


resource "local_file" "that" {
for_each = toset(["huyle", "akshay", "yongkang"])

  filename = "${path.module}/bar_${each.key}"
  content = "File belongs to ${each.key}"
}
