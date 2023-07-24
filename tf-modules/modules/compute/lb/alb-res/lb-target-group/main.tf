resource "aws_alb_target_group" "alb_target_group" {  
  name     = "${var.environment}-alb-target-group"  
  port     = var.alb_svc_port  
  protocol = "HTTP"  
  vpc_id   = var.vpc-id 
  
//   stickiness {    
//     type            = "lb_cookie"    
//     cookie_duration = 1800    
//     enabled         = "${var.target_group_sticky}"  
//   }   
  health_check {    
    healthy_threshold   = 3    
    unhealthy_threshold = 10    
    timeout             = 5    
    interval            = 10    
    path                = var.target_group_path 
    port                = var.target_group_port
  }
}
