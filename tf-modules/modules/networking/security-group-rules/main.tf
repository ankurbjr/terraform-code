resource "aws_security_group_rule" "rules" { 
  count = length(var.rules)

  type              = var.rule-type
  from_port         = var.rules[count.index].from_port
  to_port           = var.rules[count.index].to_port
  protocol          = var.rules[count.index].protocol
  cidr_blocks       = [var.rules[count.index].cidr_block]
  description       = var.rules[count.index].description
  security_group_id = var.sg-id

}
