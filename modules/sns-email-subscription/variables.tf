variable "sns_topic_name" {
  description = "The name of the SNS topic"
  type        = string
}

variable "user_email" {
  description = "The email the SNS topic will send notifications to"
  type        = string
}

variable "environment" {
  description = "The name of the deployment environment"
  type        = string
}

variable "project" {
  description = "The name of the sub-project within the AWS account"
  type        = string
}