resource "aws_glue_catalog_table" "this" {
  name          = var.table_name
  database_name = var.database_name
  description   = var.table_description
  table_type    = "EXTERNAL_TABLE"

  dynamic "partition_keys" {
    for_each = var.partition_keys
    content {
      name    = partition_keys.value.name
      type    = partition_keys.value.type
      comment = try(partition_keys.value.comment, null)
    }
  }

  storage_descriptor {
    location      = var.s3_location
    input_format  = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"

    ser_de_info {
      serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"

      parameters = {
        "serialization.format" = 1
      }
    }

    dynamic "columns" {
      for_each = var.columns
      content {
        name    = columns.value.name
        type    = columns.value.type
        comment = try(columns.value.comment, null)
      }
    }
  }
}