variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "bucket_arn" {
  type        = string
  description = "ARN of the S3 bucket"
}

variable "lambda_function_arn" {
  type        = string
  description = "ARN of the Lambda function"
}

variable "lambda_function_name" {
  type        = string
  description = "Name of the Lambda function"
}

variable "events" {
  type        = list(string)
  description = "List of S3 events to trigger the Lambda"
}

variable "filter_prefix" {
  type        = string
  description = "Prefix filter for object keys"
}

variable "filter_suffix" {
  type        = string
  description = "Suffix filter for object keys"
}