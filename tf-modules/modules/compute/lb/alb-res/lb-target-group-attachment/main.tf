resource "aws_alb_target_group_attachment" "svc_physical_external" {
  target_group_arn = var.alb_tg_arn
  target_id        = var.aws-instance-id  
  port             = 80
}