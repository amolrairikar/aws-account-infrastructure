resource "aws_lambda_function" "this" {
  function_name     = var.lambda_name
  description       = var.lambda_description
  handler           = var.lambda_handler
  memory_size       = var.lambda_memory_size
  runtime           = var.lambda_runtime
  timeout           = var.lambda_timeout
  role              = var.lambda_execution_role_arn
  s3_bucket         = var.s3_bucket_name
  s3_key            = var.s3_object_key
  s3_object_version = var.s3_object_version
  architectures     = ["x86_64"]
  layers            = var.lambda_layers
  tags              = {
    environment = var.environment
    project     = var.project
  }
  environment {
    variables = var.lambda_environment_variables
  }
}

resource "aws_lambda_function_event_invoke_config" "this" {
  function_name = aws_lambda_function.this.function_name
  destination_config {
    on_failure {
      destination = var.sns_topic_arn
    }
  }
}

resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/lambda/${var.lambda_name}"
  retention_in_days = var.log_retention_days
}