resource "aws_eip" "eip" {
  vpc        = true
  depends_on = [ var.igw_depends_on ]
}