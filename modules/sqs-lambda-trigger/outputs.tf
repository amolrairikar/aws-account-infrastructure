output "event_source_mapping_arn" {
  description = "The ARN of the SQS to Lambda event source mapping"
  value       = aws_lambda_event_source_mapping.this.arn
}