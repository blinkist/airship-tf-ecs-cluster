variable "ecs_instance_scaling_create" {
  default     = false
  description = "Do we want to enable instance scaling for this ECS Cluster"
}

variable "ecs_instance_draining_lambda_arn" {
  default     = ""
  description = "The Lambda function arn taking care of the ECS Draining lifecycle"
}

variable "asg_name" {
  type        = "string"
  description = "The name of the Autoscaling group to scale"
}

variable "cluster_name" {
  type        = "string"
  description = "The name of the ECS Cluster"
}

variable "ecs_instance_scaling_properties" {
  type = "list"
}

variable "direction" {
  type = "map"

  default = {
    up   = ["GreaterThanOrEqualToThreshold", "scale_out"]
    down = ["LessThanThreshold", "scale_in"]
  }
}
