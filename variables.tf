variable "name" {
  type = string
}

variable "cluster_id" {
    type = string
}

variable "task_definition_arn" {
    type = string
}

variable "desired_count" {
    type = string
}

/*variable "iam_role_arn" {
    type = string
}

variable "placement_type" {
    type = string
}

variable "field" {
    type = string
}*/

variable "target_group_arn" {
    type = string
}

variable "container_name" {
    type = string
}

variable "container_port" {
    type = string
}

/*variable "placement_constraints_type" {
    type = string
}

variable "expression" {
    type = string
}*/

variable "subnets" {
  type = list(string)
}

variable "assign_public_ip" {
    type = bool
  
}

variable "security_groups" {
    type = list(string)
  
}

variable "deployment_minimum_healthy_percent" {
    type = number
  
}

variable "deployment_maximum_percent" {
    type = string
  
}

variable "deployment_circuit_breaker_enabled" {
    type = bool
}

variable "deployment_circuit_breaker_rollback_enabled" {
    type = bool
}


