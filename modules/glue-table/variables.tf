variable "database_name" {
  description = "The name of the Glue database containing the Glue table"
  type        = string
}

variable "table_name" {
  description = "The name of the Glue table"
  type        = string
}

variable "table_description" {
  description = "The description of the Glue table"
  type        = string
}

variable "s3_location" {
  description = "The S3 location corresponding to the Glue table"
  type        = string
}

variable "columns" {
  description = "List of column definitions"
  type = list(object({
    name    = string
    type    = string
    comment = optional(string)
  }))
}

variable "partition_keys" {
  description = "List of partition key definitions"
  type = optional(list(object({
    name    = string
    type    = string
    comment = optional(string)
  })), [])
}