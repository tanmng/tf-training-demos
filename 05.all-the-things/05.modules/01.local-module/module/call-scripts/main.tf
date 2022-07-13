variable "greeting_phrase" {
  type        = string
  description = "How we greet the customer"
}

resource "local_file" "letter" {
  filename = "${path.module}/letter"
  content = templatefile("${path.module}/template.tpl", {
    greeting_phrase = var.greeting_phrase
  })
}
