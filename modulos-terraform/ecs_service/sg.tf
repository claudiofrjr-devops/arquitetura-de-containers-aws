resource "aws_security_group" "main" {
  name        = format("%s", var.cluster_name)
  description = format("Security group for %s-%s", var.cluster_name, var.service_name)
  vpc_id      = var.vpc_id

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }

  ingress {
    from_port = var.service_port
    to_port   = var.service_port
    protocol  = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}