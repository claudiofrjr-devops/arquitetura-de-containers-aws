## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.64.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route.public_access_to_internet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route_table.public_internet_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.public_subnet_1a_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_subnet_1b_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_subnet_1c_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_ssm_parameter.databases_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.databases_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.databases_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.private_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.private_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.private_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.public_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.public_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.public_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_subnet.databases_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.databases_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.databases_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name | `string` | `"env"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region AWS | `string` | `"us-east-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ssm_databases_subnet_1a"></a> [ssm\_databases\_subnet\_1a](#output\_ssm\_databases\_subnet\_1a) | n/a |
| <a name="output_ssm_databases_subnet_1b"></a> [ssm\_databases\_subnet\_1b](#output\_ssm\_databases\_subnet\_1b) | n/a |
| <a name="output_ssm_databases_subnet_1c"></a> [ssm\_databases\_subnet\_1c](#output\_ssm\_databases\_subnet\_1c) | n/a |
| <a name="output_ssm_private_subnet_1a"></a> [ssm\_private\_subnet\_1a](#output\_ssm\_private\_subnet\_1a) | n/a |
| <a name="output_ssm_private_subnet_1b"></a> [ssm\_private\_subnet\_1b](#output\_ssm\_private\_subnet\_1b) | n/a |
| <a name="output_ssm_private_subnet_1c"></a> [ssm\_private\_subnet\_1c](#output\_ssm\_private\_subnet\_1c) | n/a |
| <a name="output_ssm_public_subnet_1a"></a> [ssm\_public\_subnet\_1a](#output\_ssm\_public\_subnet\_1a) | n/a |
| <a name="output_ssm_public_subnet_1b"></a> [ssm\_public\_subnet\_1b](#output\_ssm\_public\_subnet\_1b) | n/a |
| <a name="output_ssm_public_subnet_1c"></a> [ssm\_public\_subnet\_1c](#output\_ssm\_public\_subnet\_1c) | n/a |
| <a name="output_ssm_vpc_id"></a> [ssm\_vpc\_id](#output\_ssm\_vpc\_id) | n/a |
