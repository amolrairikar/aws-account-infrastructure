resource "aws_sns_topic" "this" {
  name = var.sns_topic_name
  tags = {
    environment = var.environment
    project     = var.project
  }
}

resource "aws_sns_topic_subscription" "this" {
  topic_arn = aws_sns_topic.this.arn
  protocol  = "email"
  endpoint  = var.user_email
}