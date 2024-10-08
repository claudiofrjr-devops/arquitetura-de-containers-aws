variable "service_name" {}

variable "region" {}

variable "cluster_name" {}

variable "service_port" {}

variable "service_cpu" {}

variable "service_memory" {}

variable "container_image" {
  type        = string
  description = "The image of the container for deployment"

}

variable "lb_ssm_listener" {}

variable "ssm_vpc_id" {}


variable "ssm_private_subnet_1" {}


variable "ssm_private_subnet_2" {}


variable "ssm_private_subnet_3" {}

variable "ssm_alb" {
  type = string
}

variable "service_healthcheck" {

}

variable "service_hosts" {

}

variable "environment_variables" {

}

variable "capabilities" {

}

variable "service_launch_type" {
  type = list(object({
    capacity_provider = string
    weight            = number
  }))


}

variable "service_task_count" {}

### Aula 04 ###

variable "scale_type" {}

variable "task_minimum" {}

variable "task_maximum" {}

## Autoscaling de CPU ###

variable "scale_out_cpu_threshold" {}

variable "scale_out_adjustment" {}

variable "scale_out_comparison_operator" {}

variable "scale_out_statistic" {}

variable "scale_out_period" {}

variable "scale_out_evaluation_periods" {}

variable "scale_out_cooldown" {}

variable "scale_in_cpu_threshold" {}

variable "scale_in_adjustment" {}

variable "scale_in_comparison_operator" {}

variable "scale_in_statistic" {}

variable "scale_in_period" {}

variable "scale_in_evaluation_periods" {}

variable "scale_in_cooldown" {}

### Tracking  CPU Usage ###

variable "scale_tracking_cpu" {}

## Tracking Requests ###

variable "alb_arn" {}

variable "scale_tracking_requests" {}