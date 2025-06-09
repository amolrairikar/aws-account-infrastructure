output "dynamodb_arn" {
  description = "The ARN of the DynamoDB table"
  value       = aws_dynamodb_table.this.arn
}

output "dynamodb_id" {
  description = "The ID (name) of the DynamoDB table"
  value       = aws_dynamodb_table.this.arn
}