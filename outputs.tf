output "service_arn" {
  value = resource.aws_ecs_service.service.id
}