config {
  module = true
}

plugin "aws" {
  enabled = true
  version = "0.18.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

rule "aws_lambda_function_invalid_handler" {
  enabled = false
}

rule "aws_lambda_function_invalid_runtime" {
  enabled = false
}