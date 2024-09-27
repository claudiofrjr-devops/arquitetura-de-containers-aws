service_name = "chip"

region = "us-east-1"

cluster_name = "linuxtips-ecs"

service_port = 8080

service_memory = 512

service_cpu = 256

lb_ssm_listener = "/linuxtips-ecs/ecs/lb"

ssm_vpc_id = "/dev-vpc/vpc/vpc.id"

ssm_private_subnet_1 = "/dev-vpc/vpc/subnet_private_1a"

ssm_private_subnet_2 = "/dev-vpc/vpc/subnet_private_1b"

ssm_private_subnet_3 = "/dev-vpc/vpc/subnet_private_1c"

environment_variables = [

  {
    name  = "FOO",
    value = "BAR"
  },
  {
    name  = "PING",
    value = "PONG"
  }

]

capabilities = [
  "EC2"
]

service_healthcheck = {
  healthy_threshold   = 3
  unhealthy_threshold = 10
  matcher             = "200-399"
  path                = "/healthcheck"
  port                = 8080
  interval            = 30
  timeout             = 10

}

#service_launch_type = "EC2"
service_launch_type = [
  {
    capacity_provider = "FARGATE"
    weight            = 30

  },
  {

    capacity_provider = "FARGATE_SPOT"
    weight            = 70

  }

]


service_task_count = 1
service_hosts = [
  "chip.linuxtips.demo"
]


# ### Aula 04 ###
#scale_type = "cpu_tracking"
scale_type = "requests_tracking"

task_minimum = 1

task_maximum = 2

scale_out_cpu_threshold       = 50
scale_out_adjustment          = 2
scale_out_comparison_operator = "GreatherThanOrEqualToThreshold"
scale_out_statistic           = "Average"
scale_out_period              = 60
scale_out_evaluation_periods  = 2
scale_out_cooldown            = 60

scale_in_cpu_threshold       = 30
scale_in_adjustment          = -1
scale_in_comparison_operator = "LessThanOrEqualToThreshold"
scale_in_statistic           = "Average"
scale_in_period              = 60
scale_in_evaluation_periods  = 2
scale_in_cooldown            = 60


scale_tracking_cpu      = 50
scale_tracking_requests = 30

ssm_alb = "linuxtips/ecs/lb/id"