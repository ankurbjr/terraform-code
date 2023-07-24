resource "aws_key_pair" "access-key" {
  public_key = var.key-path
}