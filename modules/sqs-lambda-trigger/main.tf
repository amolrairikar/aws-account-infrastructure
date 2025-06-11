resource "aws_lambda_event_source_mapping" "this" {
  event_source_arn = var.sqs_queue_arn
  function_name    = var.lambda_function_arn
  enabled          = var.trigger_enabled
  batch_size       = var.batch_size
}