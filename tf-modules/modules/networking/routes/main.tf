resource "aws_route" "gateway" {
  route_table_id         = var.rt-id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.gw-id
}
