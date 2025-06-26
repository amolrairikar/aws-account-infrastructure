resource "aws_kinesis_firehose_delivery_stream" "this" {
  name        = var.firehose_stream_name
  destination = "extended_s3"

  extended_s3_configuration {
    role_arn           = var.firehose_role_arn
    bucket_arn         = var.s3_bucket_arn
    prefix             = "raw/"
    custom_time_zone   = var.time_zone
    buffering_size     = var.buffering_size
    buffering_interval = var.buffering_interval

    cloudwatch_logging_options {
      enabled = true
      log_group_name = aws_cloudwatch_log_group.this.name
      log_stream_name = "S3DeliveryLogs"
    }
  }

  tags = {
    environment = var.environment
    project     = var.project
  }
}

resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/firehose/${var.firehose_stream_name}"
  retention_in_days = var.log_retention_days
  tags = {
    environment = var.environment
    project     = var.project
  }
}