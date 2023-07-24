resource "aws_route_table" "rt" {
  vpc_id = var.vpc-id
  tags = {
    Name        = "${var.environment}-${var.subnet-type}-route-table"
    Environment = var.environment
  }
}