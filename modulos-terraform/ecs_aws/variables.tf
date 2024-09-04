## General Configs ##

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "env"
} # Project name

variable "region" {
  description = "Region AWS"
  type        = string
  default     = "us-east-1"
} # Region AWS (us-east-1, us-west-2, etc)

## Variaveis com Parametros do SSM ##

variable "ssm_vpc_id" {}

variable "ssm_public_subnet_1" {}

variable "ssm_public_subnet_2" {}

variable "ssm_public_subnet_3" {}

variable "ssm_private_subnet_1" {}

variable "ssm_private_subnet_2" {}

variable "ssm_private_subnet_3" {}


## Variaveis Load Balancer ##

variable "load_balancer_internal" {}

variable "load_balancer_type" {}


## ECS General Configs ##

variable "node_ami" {}

variable "node_instance_type" {}

variable "node_volume_size" {}

variable "node_volume_type" {}

variable "cluster_on_demand_min_size" {}

variable "cluster_on_demand_max_size" {}

variable "cluster_on_demand_desired_size" {}

variable "cluster_spot_min_size" {}

variable "cluster_spot_max_size" {}

variable "cluster_spot_desired_size" {}

variable "spot_price" {}