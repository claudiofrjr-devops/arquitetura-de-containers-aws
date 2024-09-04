resource "aws_ssm_parameter" "lb_arn" {
  name  = format("/%s/ecs/lb", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_lb.main.arn

}

resource "aws_ssm_parameter" "lb_listener" {
  name  = format("/%s/ecs/listener", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_lb_listener.main.arn

}