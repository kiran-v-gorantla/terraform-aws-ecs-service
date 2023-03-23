resource "aws_ecs_service" "service" {
  name = var.name
  cluster = var.cluster_id
  task_definition = var.task_definition_arn
  desired_count = var.desired_count
  deployment_minimum_healthy_percent = var.deployment_minimum_healthy_percent
  deployment_maximum_percent = var.deployment_maximum_percent
  #iam_role = var.iam_role_arn

  /*ordered_placement_strategy {
      type = var.placement_type∏
      field = var.field
  }*/

  load_balancer {
    target_group_arn = var.target_group_arn
    container_name = var.container_name
    container_port = var.container_port
  }

  /*placement_constraints {
      type = var.placement_constraints_type
      expression = var.expression #attribute:ecs.availability-zone in [us-west-2a, us-west-2b]
  }*/

  network_configuration {
      security_groups = var.security_groups
      subnets = var.subnets
      assign_public_ip = var.assign_public_ip
  }

  deployment_circuit_breaker {
    enable = var.deployment_circuit_breaker_enabled
    rollback = var.deployment_circuit_breaker_rollback_enabled
  }

}