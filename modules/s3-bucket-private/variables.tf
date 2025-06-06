variable "bucket_name" {
  description = "The name of the S3 bucket"
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

variable "versioning_status" {
  description = "The versioning status for the bucket (Enabled, Suspended, or Disabled)"
  type        = string
}

variable "bucket_acl" {
  description = "The ACL setting for the S3 bucket. Can be 'private', 'public-read', 'public-read-write', 'aws-exec-read', 'authenticated-read', 'bucket-owner-read','bucket-owner-full-control', or 'log-delivery-write'."
  default     = "private"
  type        = string
}

variable "enable_acl" {
  description = "Boolean true/false to enable or disable ACLs on the bucket. If true, ACLs will be enabled with the value specified in bucket_acl, else the value will be null."
  type        = bool
}

variable "object_ownership" {
  description = "The object ownership setting for the S3 bucket. Can be 'BucketOwnerPreferred', 'ObjectWriter', or 'BucketOwnerEnforced'."
  default     = "BucketOwnerPreferred"
  type        = string
}