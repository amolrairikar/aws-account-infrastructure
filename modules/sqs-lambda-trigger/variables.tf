variable "sqs_queue_arn" {
  type        = string
  description = "ARN of the SQS queue triggering the Lambda"
}

variable "lambda_function_arn" {
  type        = string
  description = "ARN of the Lambda function being triggered by SQS"
}

variable "trigger_enabled" {
  type        = bool
  description = "True/false indicating whether the trigger is enabled or disabled"
}

variable "batch_size" {
  type        = number
  description = "Maximum number of items from the SQS queue to batch into a single Lambda invocation"
}