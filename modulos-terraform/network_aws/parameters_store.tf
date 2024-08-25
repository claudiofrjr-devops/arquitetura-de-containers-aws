resource "aws_ssm_parameter" "vpc" {
  name  = format("/%s/vpc/vpc.id", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "private_subnet_1a" {
  name  = format("/%s/vpc/subnet_private_1a", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_subnet.private_subnet_1a.id
}

resource "aws_ssm_parameter" "private_subnet_1b" {
  name  = format("/%s/vpc/subnet_private_1b", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_subnet.private_subnet_1b.id
}

resource "aws_ssm_parameter" "private_subnet_1c" {
  name  = format("/%s/vpc/subnet_private_1c", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_subnet.private_subnet_1c.id
}

resource "aws_ssm_parameter" "public_subnet_1a" {
  name  = format("/%s/vpc/subnet_public_1a", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_subnet.public_subnet_1a.id
}

resource "aws_ssm_parameter" "public_subnet_1b" {
  name  = format("/%s/vpc/subnet_public_1b", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_subnet.public_subnet_1b.id
}

resource "aws_ssm_parameter" "public_subnet_1c" {
  name  = format("/%s/vpc/subnet_public_1c", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_subnet.public_subnet_1c.id
}

resource "aws_ssm_parameter" "databases_subnet_1a" {
  name  = format("/%s/vpc/subnet_databases_1a", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_subnet.databases_subnet_1a.id
}

resource "aws_ssm_parameter" "databases_subnet_1b" {
  name  = format("/%s/vpc/subnet_databases_1b", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_subnet.databases_subnet_1b.id
}

resource "aws_ssm_parameter" "databases_subnet_1c" {
  name  = format("/%s/vpc/subnet_databases_1c", var.project_name)
  type  = "String"
  tier  = "Standard"
  value = aws_subnet.databases_subnet_1c.id
}