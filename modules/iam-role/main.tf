resource "aws_iam_role" "this" {
  name               = var.role_name
  assume_role_policy = var.trust_relationship_policy

  tags = {
    environment = var.environment
    project     = var.project
  }
}

resource "aws_iam_policy" "this" {
  name        = "${aws_iam_role.this.name}-inline-policy"
  description = var.inline_policy_description
  policy      = var.inline_policy
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = aws_iam_role.this.name
  policy_arn = aws_iam_policy.this.arn
}