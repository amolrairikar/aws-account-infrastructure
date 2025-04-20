variable "environment" {
  description = "The name of the deployment environment"
  type        = string
}

variable "project" {
  description = "The name of the sub-project within the AWS account"
  type        = string
}

variable "lambda_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_description" {
  description = "The description of the Lambda function"
  type        = string
}

variable "lambda_filename" {
  description = "The name of the .zip file containing the Lambda function and dependencies"
  type        = string
}

variable "lambda_handler" {
  description = "The handler function in the source code of the Lambda function"
  type        = string
}

variable "lambda_memory_size" {
  description = "The memory size of the Lambda function"
  type        = string
}

variable "lambda_runtime" {
  description = "The runtime of the Lambda function"
  type        = string
}

variable "lambda_timeout" {
  description = "The amount of seconds before the Lambda function times out"
  type        = string
}

variable "lambda_execution_role_policy" {
  description = "The execution role policy JSON for the Lambda"
  type        = string
}

variable "sns_topic_arn" {
  description = "The ARN of the SNS topic Lambda failures will be sent to"
  type        = string
}