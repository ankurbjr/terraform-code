resource "aws_subnet" "subnet" {
  vpc_id                  = var.vpc-id
#  count                   = length(var.private_subnets_cidr)
  count                   = length(var.subnets_cidr)
  cidr_block              = element(var.subnets_cidr, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = false
  tags = {
    Name        = "${var.environment}-${element(var.availability_zones, count.index)}-${(var.subnet-type)}-subnet"
    Environment = var.environment
  }
}