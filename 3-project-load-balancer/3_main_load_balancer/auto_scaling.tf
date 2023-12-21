resource "aws_autoscaling_group" "auto_scaling_group" {
  name = "asg-demo"
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
#   vpc_zone_identifier = [for i in aws_subnet.Public_subnet[*] : i.id]
availability_zones = data.aws_availability_zones.available.names
  force_delete         = true
  load_balancers       = [aws_lb.test.id]  
  launch_template {
    id      = aws_launch_template.foo.id
    version = aws_launch_template.foo.latest_version
  }

  target_group_arns = [aws_lb_target_group.target_group.arn]

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [ aws_subnet.Public_subnet ]
}
