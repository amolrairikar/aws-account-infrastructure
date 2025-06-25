output "glue_table_arn" {
  description = "The ARN of the Glue table"
  value       = aws_glue_catalog_table.this.arn
}

output "glue_catalog_id" {
  description = "The catalog ID of the Glue table"
  value       = aws_glue_catalog_table.this.id
}