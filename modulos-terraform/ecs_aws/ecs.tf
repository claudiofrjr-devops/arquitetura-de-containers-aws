resource "aws_ecs_cluster" "main" {
  name = format("%s-cluster", var.project_name)


}


resource "aws_ecs_cluster_capacity_providers" "main" {
  cluster_name = aws_ecs_cluster.main.name
  capacity_providers = [
    aws_ecs_capacity_provider.on_demand.name,
    aws_ecs_capacity_provider.spots.name
  ]

  default_capacity_provider_strategy {
    capacity_provider = aws_ecs_capacity_provider.spots.name
    weight            = 60
    base              = 0
  }

  default_capacity_provider_strategy {
    capacity_provider = aws_ecs_capacity_provider.on_demand.name
    weight            = 40
    base              = 0
  }

}