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

variable "trust_relationship_policy" {
  description = "The trust relationship policy JSON for the role"
  type        = string
}

variable "inline_policy" {
  description = "The inline policy JSON for the role"
  type        = string
}

variable "inline_policy_description" {
  description = "The inline policy description"
  type        = string
}