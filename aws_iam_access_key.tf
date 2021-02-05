#provider "aws" {
#  region = "us-west-2"
#}

resource "aws_iam_access_key" "noAccessKeyForRootAccount" {
  user    = "root"
  pgp_key = "keybase:some_person_that_exists"
  status  = "Active"
}

resource "aws_iam_user" "NewUser" {
  name = "NewUserTest2"
  path = "/Users/ICEALIM/delete_secret/"
}

resource "aws_iam_access_key" "NewUserAccessKey" {
  user    = "${aws_iam_user.NewUser.name}"
}

output "secret" {
  value = "${aws_iam_access_key.NewUserAccessKey.encrypted_secret}"
}

resource "aws_iam_user_policy" "NewUserPolicy" {
  name = "NewUserPolicyTest"
  user = "${aws_iam_user.NewUser.name}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
