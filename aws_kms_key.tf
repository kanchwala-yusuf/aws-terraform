#provider "aws" {
#  region = "us-west-2"
#}


resource "aws_kms_key" "kmsKeyDisabled" {
  description = "KMS key 2"
  is_enabled  = true
}

resource "aws_kms_key" "kmsKeyRotationDisabled" {
  description         = "KMS key 2"
  is_enabled          = true
  enable_key_rotation = true
}

resource "aws_kms_key" "kmsKeyNoDeletionWindow" {
  description         = "KMS key 2"
  is_enabled          = true
  enable_key_rotation = true
}


resource "aws_kms_key" "kmsKeyExposedPolicy" {
  description = "KMS key 2"
  policy      = "{\"Statement\":[{\"Action\":[\"kms:##kms_action##\"],\"Principal\":\"##principal##\",\"Resource\":\"*\"}],\"Version\":\"2012-10-17\"}"
}
