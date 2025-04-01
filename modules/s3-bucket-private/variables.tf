variable "bucket_prefix" {
  description = "The prefix for the name of the S3 bucket"
  type        = string
}

variable "account_number" {
  description = "The AWS account number"
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