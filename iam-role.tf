resource "aws_iam_role" "lambda" {
  name = "talant_lamda"
  assume_role_policy = data.aws_iam_policy_document.lambda-assume-role.json
}

data "aws_iam_policy_document" "lambda-assume-role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}
