variable "layer_name" {
  description = "The name of the Lambda layer"
  type        = string
}

variable "layer_description" {
  description = "The description of the Lambda layer"
  type        = string
}

variable "layer_architectures" {
  description = "The compatible architectures for the Lambda layer (either 'x86_64' and/or 'arm64')"
  type        = list(string)
}

variable "layer_runtimes" {
  description = "The compatible runtimes for the Lambda layer"
  type        = list(string)
}

variable "s3_bucket" {
  description = "The S3 bucket where the layer zip file is stored"
  type        = string
}

variable "s3_key" {
  description = "The S3 key corresponding to the layer zip file"
  type        = string
}

variable "s3_object_version" {
  description = "The version of the S3 object containing the most recent code for the layer zip file"
  type        = string
}