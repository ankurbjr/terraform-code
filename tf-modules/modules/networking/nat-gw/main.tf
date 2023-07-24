resource "aws_nat_gateway" "nat" {
  allocation_id = var.eip-id
  subnet_id     = var.subnet-id
  depends_on    = [ var.igw_depends_on ]
  tags = {
    Name        = "${var.environment}-nat-gw"
    Environment = var.environment
  }
}