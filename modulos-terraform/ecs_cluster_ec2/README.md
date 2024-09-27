## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.on_demand](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_autoscaling_group.spots](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_ecs_capacity_provider.on_demand](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_capacity_provider) | resource |
| [aws_ecs_capacity_provider.spots](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_capacity_provider) | resource |
| [aws_ecs_cluster.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_cluster_capacity_providers.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers) | resource |
| [aws_launch_template.on_demand](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_launch_template.spots](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_lb.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_security_group.lb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.ingress_443](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ingress_80](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.subnet_ranges](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_ssm_parameter.lb_arn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.lb_listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.subnet_private_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.subnet_private_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.subnet_private_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.subnet_public_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.subnet_public_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.subnet_public_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_on_demand_desired_size"></a> [cluster\_on\_demand\_desired\_size](#input\_cluster\_on\_demand\_desired\_size) | n/a | `any` | n/a | yes |
| <a name="input_cluster_on_demand_max_size"></a> [cluster\_on\_demand\_max\_size](#input\_cluster\_on\_demand\_max\_size) | n/a | `any` | n/a | yes |
| <a name="input_cluster_on_demand_min_size"></a> [cluster\_on\_demand\_min\_size](#input\_cluster\_on\_demand\_min\_size) | n/a | `any` | n/a | yes |
| <a name="input_cluster_spot_desired_size"></a> [cluster\_spot\_desired\_size](#input\_cluster\_spot\_desired\_size) | n/a | `any` | n/a | yes |
| <a name="input_cluster_spot_max_size"></a> [cluster\_spot\_max\_size](#input\_cluster\_spot\_max\_size) | n/a | `any` | n/a | yes |
| <a name="input_cluster_spot_min_size"></a> [cluster\_spot\_min\_size](#input\_cluster\_spot\_min\_size) | n/a | `any` | n/a | yes |
| <a name="input_load_balancer_internal"></a> [load\_balancer\_internal](#input\_load\_balancer\_internal) | n/a | `any` | n/a | yes |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | n/a | `any` | n/a | yes |
| <a name="input_node_ami"></a> [node\_ami](#input\_node\_ami) | n/a | `any` | n/a | yes |
| <a name="input_node_instance_type"></a> [node\_instance\_type](#input\_node\_instance\_type) | n/a | `any` | n/a | yes |
| <a name="input_node_volume_size"></a> [node\_volume\_size](#input\_node\_volume\_size) | n/a | `any` | n/a | yes |
| <a name="input_node_volume_type"></a> [node\_volume\_type](#input\_node\_volume\_type) | n/a | `any` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name | `string` | `"env"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region AWS | `string` | `"us-east-1"` | no |
| <a name="input_spot_price"></a> [spot\_price](#input\_spot\_price) | n/a | `any` | n/a | yes |
| <a name="input_ssm_private_subnet_1"></a> [ssm\_private\_subnet\_1](#input\_ssm\_private\_subnet\_1) | n/a | `any` | n/a | yes |
| <a name="input_ssm_private_subnet_2"></a> [ssm\_private\_subnet\_2](#input\_ssm\_private\_subnet\_2) | n/a | `any` | n/a | yes |
| <a name="input_ssm_private_subnet_3"></a> [ssm\_private\_subnet\_3](#input\_ssm\_private\_subnet\_3) | n/a | `any` | n/a | yes |
| <a name="input_ssm_public_subnet_1"></a> [ssm\_public\_subnet\_1](#input\_ssm\_public\_subnet\_1) | n/a | `any` | n/a | yes |
| <a name="input_ssm_public_subnet_2"></a> [ssm\_public\_subnet\_2](#input\_ssm\_public\_subnet\_2) | n/a | `any` | n/a | yes |
| <a name="input_ssm_public_subnet_3"></a> [ssm\_public\_subnet\_3](#input\_ssm\_public\_subnet\_3) | n/a | `any` | n/a | yes |
| <a name="input_ssm_vpc_id"></a> [ssm\_vpc\_id](#input\_ssm\_vpc\_id) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_ssm_arn"></a> [lb\_ssm\_arn](#output\_lb\_ssm\_arn) | n/a |
| <a name="output_lb_ssm_listener"></a> [lb\_ssm\_listener](#output\_lb\_ssm\_listener) | n/a |
| <a name="output_load_balancer_dns"></a> [load\_balancer\_dns](#output\_load\_balancer\_dns) | n/a |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.spots](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_ecs_capacity_provider.spots](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_capacity_provider) | resource |
| [aws_ecs_cluster.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_cluster_capacity_providers.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers) | resource |
| [aws_iam_instance_profile.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.ec2_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ec2_ssm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_launch_template.spots](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_lb.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_security_group.lb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.ingress_443](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ingress_80](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.subnet_ranges](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_ssm_parameter.lb_arn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.lb_listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.subnet_private_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.subnet_private_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.subnet_private_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.subnet_public_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.subnet_public_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.subnet_public_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_on_demand_desired_size"></a> [cluster\_on\_demand\_desired\_size](#input\_cluster\_on\_demand\_desired\_size) | n/a | `any` | n/a | yes |
| <a name="input_cluster_on_demand_max_size"></a> [cluster\_on\_demand\_max\_size](#input\_cluster\_on\_demand\_max\_size) | n/a | `any` | n/a | yes |
| <a name="input_cluster_on_demand_min_size"></a> [cluster\_on\_demand\_min\_size](#input\_cluster\_on\_demand\_min\_size) | n/a | `any` | n/a | yes |
| <a name="input_cluster_spot_desired_size"></a> [cluster\_spot\_desired\_size](#input\_cluster\_spot\_desired\_size) | n/a | `any` | n/a | yes |
| <a name="input_cluster_spot_max_size"></a> [cluster\_spot\_max\_size](#input\_cluster\_spot\_max\_size) | n/a | `any` | n/a | yes |
| <a name="input_cluster_spot_min_size"></a> [cluster\_spot\_min\_size](#input\_cluster\_spot\_min\_size) | n/a | `any` | n/a | yes |
| <a name="input_load_balancer_internal"></a> [load\_balancer\_internal](#input\_load\_balancer\_internal) | n/a | `any` | n/a | yes |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | n/a | `any` | n/a | yes |
| <a name="input_node_ami"></a> [node\_ami](#input\_node\_ami) | n/a | `any` | n/a | yes |
| <a name="input_node_instance_type"></a> [node\_instance\_type](#input\_node\_instance\_type) | n/a | `any` | n/a | yes |
| <a name="input_node_volume_size"></a> [node\_volume\_size](#input\_node\_volume\_size) | n/a | `any` | n/a | yes |
| <a name="input_node_volume_type"></a> [node\_volume\_type](#input\_node\_volume\_type) | n/a | `any` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name | `string` | `"env"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region AWS | `string` | `"us-east-1"` | no |
| <a name="input_spot_price"></a> [spot\_price](#input\_spot\_price) | n/a | `any` | n/a | yes |
| <a name="input_ssm_private_subnet_1"></a> [ssm\_private\_subnet\_1](#input\_ssm\_private\_subnet\_1) | n/a | `any` | n/a | yes |
| <a name="input_ssm_private_subnet_2"></a> [ssm\_private\_subnet\_2](#input\_ssm\_private\_subnet\_2) | n/a | `any` | n/a | yes |
| <a name="input_ssm_private_subnet_3"></a> [ssm\_private\_subnet\_3](#input\_ssm\_private\_subnet\_3) | n/a | `any` | n/a | yes |
| <a name="input_ssm_public_subnet_1"></a> [ssm\_public\_subnet\_1](#input\_ssm\_public\_subnet\_1) | n/a | `any` | n/a | yes |
| <a name="input_ssm_public_subnet_2"></a> [ssm\_public\_subnet\_2](#input\_ssm\_public\_subnet\_2) | n/a | `any` | n/a | yes |
| <a name="input_ssm_public_subnet_3"></a> [ssm\_public\_subnet\_3](#input\_ssm\_public\_subnet\_3) | n/a | `any` | n/a | yes |
| <a name="input_ssm_vpc_id"></a> [ssm\_vpc\_id](#input\_ssm\_vpc\_id) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_ssm_arn"></a> [lb\_ssm\_arn](#output\_lb\_ssm\_arn) | n/a |
| <a name="output_lb_ssm_listener"></a> [lb\_ssm\_listener](#output\_lb\_ssm\_listener) | n/a |
| <a name="output_load_balancer_dns"></a> [load\_balancer\_dns](#output\_load\_balancer\_dns) | n/a |
