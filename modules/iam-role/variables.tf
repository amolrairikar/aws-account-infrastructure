variable "environment" {
  description = "The name of the deployment environment"
  type        = string
}

variable "project" {
  description = "The name of the sub-project within the AWS account"
  type        = string
}

variable "role_name" {
  description = "The name of the IAM role"
  type        = string
}

variable "service_name" {
  description = "The name of the AWS service (will be used in the trust policy)"
  type        = string
}