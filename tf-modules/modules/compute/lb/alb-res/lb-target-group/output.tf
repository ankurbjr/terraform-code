output "alb_tg_arn" {
    value = aws_alb_target_group.alb_target_group.arn
}

output "alb_tg_id" {
    value = aws_alb_target_group.alb_target_group.id
}