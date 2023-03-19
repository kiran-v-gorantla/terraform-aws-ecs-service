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

variable "placement_constraints_type" {
    type = string
}

variable "expression" {
    type = string
}

variable "subnets" {
  type = list(string)
}



