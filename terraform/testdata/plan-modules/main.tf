locals {
  val = 2
  bar = "baz"
}

module "child" {
  count = local.val
  foo = 2
  bar = local.bar
  source = "./child"
}

output "out" {
  value = module.child[*].out
}

resource "aws_instance" "foo" {
  num = 2
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
}
