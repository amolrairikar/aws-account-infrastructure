resource aws_dynamodb_table "this" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.hash_key
  range_key    = var.range_key

  dynamic "attribute" {
    for_each = var.attributes
    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }

  dynamic "ttl" {
    for_each = var.enable_ttl ? [1] : []
    content {
      attribute_name = "TimeToExist"
      enabled        = true
    }
  }

  tags = {
    environment = var.environment
    project     = var.project
  }
}