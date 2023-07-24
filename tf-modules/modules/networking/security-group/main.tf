resource "aws_security_group" "new-sg" {
  name        = "${var.environment}-${var.resource-attached}-default-sg"
  description = "Default security group to allow inbound/outbound from the VPC"
  vpc_id      = var.vpc-id

  tags = {
    Name = "${var.environment}-${var.resource-attached}-sg"
    Environment = var.environment
  }
}