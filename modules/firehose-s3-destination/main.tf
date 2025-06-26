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
      log_group_name = "/aws/kinesisfirehose/${var.log_group_name}"
      log_stream_name = "S3DeliveryLogs"
    }
  }

  tags = {
    environment = var.environment
    project     = var.project
  }
}