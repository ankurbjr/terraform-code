resource "aws_lb" "alb" {
  name = "${var.environment}-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [ var.sg-id ]
  subnets            = var.subnet-id

#  enable_deletion_protection = true

}

resource "aws_lb_listener" "alb_listener" {  
  load_balancer_arn = aws_lb.alb.arn
  port              = var.alb_listener_port 
  protocol          = var.alb_listener_protocol
  
  default_action {    
    target_group_arn = var.target_group_arn
    type             = "forward"  
  }
}

resource "aws_alb_listener_rule" "listener_rule" {
  depends_on   = [ var.alb-tg-id ]
  listener_arn = aws_lb_listener.alb_listener.arn
  action {    
    type             = "forward"    
    target_group_arn = var.alb-tg-id
  }   
  condition {    
    path_pattern { 
      values = [ var.alb_path ]  
    }
  }
}
