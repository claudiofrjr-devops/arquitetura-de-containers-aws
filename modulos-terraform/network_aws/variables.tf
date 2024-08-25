## General Configs ##

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "env"
} # Project name

variable "region" {
  description = "Region AWS"
  type        = string
  default     = "us-east-1"
} # Region AWS (us-east-1, us-west-2, etc)