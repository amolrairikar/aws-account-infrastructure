variable "environment" {
  description = "The name of the deployment environment"
  type        = string
}

variable "project" {
  description = "The name of the sub-project within the AWS account"
  type        = string
}

variable "lambda_arn" {
  description = "The ARN of the Lambda function EventBridge Scheduler will trigger"
  type        = string
}

variable "eventbridge_role_arn" {
  description = "The ARN of the role assumed by EventBridge Scheduler to trigger the Lambda function"
  type        = string
}

variable "schedule_frequency" {
  description = "How often the scheduler will trigger the target Lambda"
  type        = string
}

variable "schedule_timezone" {
  description = "The timezone the scheduler will use"
  type        = string
}

variable "schedule_state" {
  description = "Either ENABLED or DISABLED, use DISABLED if you want to deploy the scheduler without triggering the Lambda yet"
  type        = string
}