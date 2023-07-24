resource "aws_security_group_rule" "sg-sg-rules" { 
  type              = var.rule-type
  from_port         = var.from_port
  to_port           = var.to_port
  protocol          = var.protocol
  source_security_group_id   = var.security_groups
  description       = var.description
  security_group_id = var.sg-id

}