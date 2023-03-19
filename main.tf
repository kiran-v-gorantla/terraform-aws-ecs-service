resource "aws_ecs_service" "service" {
  name = var.name
  cluster = var.cluster_id
  task_definition = var.task_definition_arn
  desired_count = var.desired_count
  #iam_role = var.iam_role_arn

  /*ordered_placement_strategy {
      type = var.placement_type
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
      subnets = var.subnets
      assign_public_ip = var.assign_public_ip
  }
}