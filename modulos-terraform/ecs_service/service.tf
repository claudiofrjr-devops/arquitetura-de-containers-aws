resource "aws_ecs_service" "main" {
  name    = var.service_name
  cluster = format("%s-cluster", var.cluster_name)

  task_definition = aws_ecs_task_definition.main.arn

  desired_count = var.service_task_count

  #launch_type = var.service_launch_type

  deployment_maximum_percent         = 200 #realiza a subida de 200% de containers sem derrubar os antigos antes da subida dos novos
  deployment_minimum_healthy_percent = 100 #mantem 100% como minimo disponivel o tempo todo garantindo que antes de matar os antigos ja esteja 100% dos novos disponiveis

  # Configuração nao deixa o serviço ficar instável rodando para sempre principalmente em caso de falhas com Fargate e com rollback volta pra versao anterior estavel
  deployment_circuit_breaker {
    enable   = true
    rollback = true
  }

  dynamic "capacity_provider_strategy" {
    for_each = var.service_launch_type

    content {
      capacity_provider = capacity_provider_strategy.value.capacity_provider
      weight            = capacity_provider_strategy.value.weight
    }

  }

  ## Utilizado somente com Launch_type EC2 - com fargate nao é possivel ter ese nivel de controle pra balancear de forma igual entre as AZs ####
  dynamic "ordered_placement_strategy" {
    for_each = var.service_launch_type == "EC2" ? 1 : 0

    content {
      type  = "spread"
      field = "atribute:ecs.availability-zone"

    }

  }

  network_configuration {
    security_groups = [
      aws_security_group.main.id
    ]
    subnets          = var.private_subnets
    assign_public_ip = false
  }
  load_balancer {
    target_group_arn = aws_alb_target_group.main.arn
    container_name   = var.service_name
    container_port   = var.service_port
  }

  lifecycle {
    ignore_changes = [
      desired_count
    ]
  }

  # platform_version = "LATEST" # Somente utilizado com Fargate e nao EC2

  depends_on = []















}