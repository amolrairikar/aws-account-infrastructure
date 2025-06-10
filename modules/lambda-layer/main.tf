resource "aws_lambda_layer_version" "this" {
  filename                 = var.layer_filename
  source_code_hash         = filebase64sha256(var.layer_filename)
  layer_name               = var.layer_name
  description              = var.layer_description
  compatible_architectures = var.layer_architectures
  compatible_runtimes      = var.layer_runtimes
  skip_destroy             = false
}