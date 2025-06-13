resource "aws_lambda_layer_version" "this" {
  layer_name               = var.layer_name
  description              = var.layer_description
  compatible_architectures = var.layer_architectures
  compatible_runtimes      = var.layer_runtimes
  skip_destroy             = false
  s3_bucket                = var.s3_bucket
  s3_key                   = var.s3_key
  s3_object_version        = var.s3_object_version
}