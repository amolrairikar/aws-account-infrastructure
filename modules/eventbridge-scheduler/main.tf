resource "aws_scheduler_schedule" "this" {
  name                         = "${var.project}-${var.environment}-lambda-trigger"
  description                  = "Trigger Lambda function every 1 hour"
  schedule_expression          = "rate(1 hour)"
  schedule_expression_timezone = "America/Chicago"
  flexible_time_window {
    mode = "OFF"
  }
  target {
    arn      = var.lambda_arn
    role_arn = var.eventbridge_role_arn
  }
}