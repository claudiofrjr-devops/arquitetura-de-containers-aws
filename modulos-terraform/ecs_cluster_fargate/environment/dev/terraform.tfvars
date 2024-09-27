project_name = "linuxtips-ecs"
region       = "us-east-1"


#####  SSM VPC Parameters #####

ssm_vpc_id = "/dev-vpc/vpc/vpc.id"

ssm_public_subnet_1 = "/dev-vpc/vpc/subnet_public_1a"
ssm_public_subnet_2 = "/dev-vpc/vpc/subnet_public_1b"
ssm_public_subnet_3 = "/dev-vpc/vpc/subnet_public_1c"

ssm_private_subnet_1 = "/dev-vpc/vpc/subnet_private_1a"
ssm_private_subnet_2 = "/dev-vpc/vpc/subnet_private_1b"
ssm_private_subnet_3 = "/dev-vpc/vpc/subnet_private_1c"


#####  Load Balancer #####

load_balancer_internal = "false"
load_balancer_type     = "application"


## ECS Cluster Configs ##

node_ami                       = "ami-0a5f593ecaa0f722d"
node_instance_type             = "t2.micro"
node_volume_size               = "30"
node_volume_type               = "gp3"
cluster_on_demand_min_size     = 1
cluster_on_demand_max_size     = 1
cluster_on_demand_desired_size = 1
cluster_spot_min_size          = 1
cluster_spot_max_size          = 1
cluster_spot_desired_size      = 1
spot_price                     = "0.016"