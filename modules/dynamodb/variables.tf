variable "environment" {
  description = "The name of the deployment environment"
  type        = string
}

variable "project" {
  description = "The name of the sub-project within the AWS account"
  type        = string
}

variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "hash_key" {
  description = "Attribute that will be used as the main partition key for the DynamoDB table"
  type        = string
}

variable "range_key" {
  description = "Attribute that will be used as the main sort key for the DynamoDB table"
  type        = string
}

variable "attributes" {
  type = list(object({
    name = string
    type = string
  }))
  description = "List of attributes in the DynamoDB table. Valid values for type are: S (String), N (Number), B (Binary)"
}

variable "enable_ttl" {
  description = "The billing mode for the DynamoDB table (PAY_PER_REQUEST or PROVISIONED)"
  type        = string
}