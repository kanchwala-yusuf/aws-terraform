#provider "aws" {
#  region = "us-west-2"
#}


resource "aws_iam_account_password_policy" "passwordRequireMinLength" {
  minimum_password_length        = 6
}

resource "aws_iam_account_password_policy" "passwordRequireMinLength14" {
  minimum_password_length        = 13
}

resource "aws_iam_account_password_policy" "passwordRequireLowerCase" {
  require_lowercase_characters   = false
  minimum_password_length        = 14
}

resource "aws_iam_account_password_policy" "passwordRequireNumber" {
  require_numbers                = false
  minimum_password_length        = 14
}

resource "aws_iam_account_password_policy" "passwordRequireUpperCase" {
  require_uppercase_characters   = false
  minimum_password_length        = 14
}

resource "aws_iam_account_password_policy" "passwordRequireSymbol" {
  require_symbols                = false
  minimum_password_length        = 14
}

resource "aws_iam_account_password_policy" "passwordRotateEvery90Days" {
  max_password_age               = 91
  minimum_password_length        = 14
}

resource "aws_iam_account_password_policy" "passwordResuseNotAllowed" {
  password_reuse_prevention      = 1
  minimum_password_length        = 14
}

