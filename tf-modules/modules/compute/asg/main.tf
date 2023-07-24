resource "aws_launch_template" "temp_auto_scale" {
  name_prefix   = "${var.environment}-autosacling_template"
  image_id      = var.ami_id
  instance_type = var.instance-type
}

resource "aws_autoscaling_group" "asg" {
  availability_zones = var.az
  desired_capacity   = 1
  max_size           = 2
  min_size           = 1

  launch_template {
    id      = aws_launch_template.temp_auto_scale.id
    version = "$Latest"
  }

  tags = {
    Name = "${var.environment}-asg-instance"
  }
}