resource "aws_scheduler_schedule" "this" {
  name                         = "${var.project}-${var.environment}-lambda-trigger"
  description                  = "Triggers lambda function ${var.lambda_arn} at a rate of ${var.schedule_frequency}"
  schedule_expression          = var.schedule_frequency
  schedule_expression_timezone = var.schedule_timezone
  state                        = var.schedule_state
  flexible_time_window {
    mode = "OFF"
  }
  target {
    arn      = var.lambda_arn
    role_arn = var.eventbridge_role_arn
  }
}