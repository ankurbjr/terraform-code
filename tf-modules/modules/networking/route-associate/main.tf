resource "aws_route_table_association" "rt-ass" {
  count          = length(var.subnet-cidr)
  subnet_id      = element(var.subnet-id, count.index)
  route_table_id = var.rt-id
}