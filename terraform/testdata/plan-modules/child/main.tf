resource "aws_instance" "foo" {
  count = 2
  num = "2"
}
