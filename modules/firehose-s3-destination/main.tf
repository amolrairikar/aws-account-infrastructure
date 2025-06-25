resource "aws_kinesis_firehose_delivery_stream" "this" {
  name        = var.firehose_stream_name
  destination = "extended_s3"

  extended_s3_configuration {
    role_arn           = var.firehose_role_arn
    bucket_arn         = var.s3_bucket_arn
    custom_time_zone   = var.time_zone
    buffering_interval = var.buffering_interval

    data_format_conversion_configuration {
      input_format_configuration {
        deserializer {
          open_x_json_ser_de {
            case_insensitive = true
            convert_dots_in_json_keys_to_underscores = true
          }
        }
      }

      output_format_configuration {
        serializer {
          parquet_ser_de {
            compression = "SNAPPY"
          }
        }
      }

      schema_configuration {
        database_name = var.glue_database_name
        role_arn = var.firehose_role_arn
        table_name = var.glue_table_name
      }
    }

    dynamic_partitioning_configuration {
      enabled = false
    }

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