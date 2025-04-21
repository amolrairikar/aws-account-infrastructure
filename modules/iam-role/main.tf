resource "aws_iam_role" "this" {
  name               = var.role_name
  assume_role_policy = var.trust_relationship_policy

  tags = {
    environment = var.environment
    project     = var.project
  }
}