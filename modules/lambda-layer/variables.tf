variable "layer_filename" {
  description = "The name of the zip file containing the Lambda layer source code"
  type        = string
}

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