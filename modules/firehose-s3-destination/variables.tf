variable "environment" {
  description = "The name of the deployment environment"
  type        = string
}

variable "project" {
  description = "The name of the sub-project within the AWS account"
  type        = string
}

variable "firehose_stream_name" {
  description = "The name of the Firehose delivery stream"
  type        = string
}

variable "firehose_role_arn" {
  description = "The ARN of the IAM role associated with Firehose"
  type        = string
}

variable "s3_bucket_arn" {
  description = "The ARN of the S3 bucket Firehose will write data to"
  type        = string
}

variable "time_zone" {
  description = "The time zone to use. Valid values are UTC or a non-3-letter IANA time zones (e.g., America/Los_Angeles)."
  type        = string
}

variable "buffering_size" {
  description = "Buffer incoming data to the specified size, in MBs, before delivering it to S3"
  type        = number
}

variable "buffering_interval" {
  description = "The number of seconds to buffer incoming data for before delivering it to S3"
  type        = number
}

variable "log_retention_days" {
  description = "The number of days to retain Cloudwatch logs for the delivery stream"
  type        = string
}