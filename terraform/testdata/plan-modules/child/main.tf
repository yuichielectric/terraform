variable "foo" {}

resource "aws_instance" "foo" {
  count = 2
  num = var.foo
}

output "out" {
  value = aws_instance.foo[0].id
}
