resource "aws_lb_listener_rule" "main" {


  listener_arn = "arn:aws:elasticloadbalancing:us-east-1:058264399987:listener/app/linuxtips-ecs-ingress/c06fe41a30030169/01e1a2ab248eaebc"

  action {
    type             = "forward"
    target_group_arn = aws_alb_target_group.main.arn
  }
  condition {
    host_header {
      values = var.service_hosts

    }

  }
}