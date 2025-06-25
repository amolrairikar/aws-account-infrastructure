output "firehose_stream_arn" {
  description = "The ARN of the Firehose delivery stream"
  value       = aws_kinesis_firehose_delivery_stream.this.arn
}