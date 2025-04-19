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