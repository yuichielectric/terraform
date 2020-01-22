locals {
  foo = "2"
}
resource "aws_instance" "foo" {
  count = 2
  num = local.foo
}

output "out" {
  value = aws_instance.foo[0].id
}
