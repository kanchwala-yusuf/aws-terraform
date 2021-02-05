#provider "aws" {
#  region = "us-west-2"
#}

resource "aws_iam_group_policy" "iamGrpPolicyWithFullAdminCntrl" {
  name   = "test"
  group  = "test"
  policy = "{\"Statement\":[{\"Action\":[\"##resource:action##\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}],\"Version\":\"2012-10-17\"}"
}
