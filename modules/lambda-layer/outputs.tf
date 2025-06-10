output "layer_arn_with_version" {
  description = "The ARN of the Lambda layer with the version"
  value       = aws_lambda_layer_version.this.arn
}

output "layer_arn_without_version" {
  description = "The ARN of the Lambda layer without the version"
  value       = aws_lambda_layer_version.this.layer_arn
}