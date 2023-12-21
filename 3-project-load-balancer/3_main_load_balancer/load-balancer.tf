resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_ports.id]
  subnets            = [for subnet in aws_subnet.Public_subnet : subnet.id]

  enable_deletion_protection = true

  tags = {
    Environment = "dev"
  }
}