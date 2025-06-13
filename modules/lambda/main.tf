resource "aws_lambda_function" "this" {
  function_name    = var.lambda_name
  description      = var.lambda_description
  filename         = var.lambda_filename
  source_code_hash = filebase64sha256(var.lambda_filename)
  handler          = var.lambda_handler
  memory_size      = var.lambda_memory_size
  runtime          = var.lambda_runtime
  timeout          = var.lambda_timeout
  role             = var.lambda_execution_role_arn
  architectures    = ["x86_64"]
  layers           = var.lambda_layers
  environment {
    variables = var.lambda_environment_variables
  }
  tags = {
    environment = var.environment
    project     = var.project
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