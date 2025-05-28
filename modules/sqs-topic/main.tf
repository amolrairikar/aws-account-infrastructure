resource "aws_sqs_queue" "this" {
  name                       = var.queue_name
  visibility_timeout_seconds = var.visibility_timeout_seconds

  tags = {
    project     = var.project
    environment = var.environment
  }
}