#provider "aws" {
#  region = "us-west-2"
#}

resource "aws_s3_bucket_policy" "allowActionsFromAllPrincipals" {
  bucket = "test"

  policy = "{\"Id\":\"MYBUCKETPOLICY\",\"Statement\":[{\"Action\":\"##s3:action##\",\"Effect\":\"Allow\",\"Principal\":\"##principal##\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "allowDeleteActionFromAllPrncpls" {
  bucket = "test"

  policy = "{\"Id\":\"MYBUCKETPOLICY\",\"Statement\":[{\"Action\":\"s3:Delete*\",\"Effect\":\"Allow\",\"Principal\":\"##principal##\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "allowGetActionFromAllPrncpls" {
  bucket = "test"

  policy = "{\"Id\":\"MYBUCKETPOLICY\",\"Statement\":[{\"Action\":\"s3:Get*\",\"Effect\":\"Allow\",\"Principal\":\"##principal##\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "allowListActionFromAllPrncpls" {
  bucket = "test"

  policy = "{\"Id\":\"MYBUCKETPOLICY\",\"Statement\":[{\"Action\":\"s3:List*\",\"Effect\":\"Allow\",\"Principal\":\"##principal##\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "allowPutActionFromAllPrncpls" {
  bucket = "test"

  policy = "{\"Id\":\"MYBUCKETPOLICY\",\"Statement\":[{\"Action\":\"s3:Put*\",\"Effect\":\"Allow\",\"Principal\":\"##principal##\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "allowRestoreActionFromAllPrncpls" {
  bucket = "test"

  policy = "{\"Id\":\"MYBUCKETPOLICY\",\"Statement\":[{\"Action\":\"s3:Restore*\",\"Effect\":\"Allow\",\"Principal\":\"##principal##\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "checkBucketPolicylogging" {
  bucket = "test"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "AWSCloudTrailAclCheck20150319",
      "Effect": "Allow",
      "Principal": {"Service": "cloudtrail.amazonaws.com"},
      "Action": "s3:GetBucketAcl",
      "Resource": "arn:aws:s3:::myBucketName"
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_policy" "allowReadACPActionFromAllPrncpls" {
  bucket = "test"

  policy = "{\"Id\":\"MYBUCKETPOLICY\",\"Statement\":[{\"Action\":\"s3:GetBucketAcl\",\"Effect\":\"Allow\",\"Principal\":\"##principal##\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "allowWriteACPActionFromAllPrncpls" {
  bucket = "test"

  policy = "{\"Id\":\"MYBUCKETPOLICY\",\"Statement\":[{\"Action\":\"s3:PutBucketAcl\",\"Effect\":\"Allow\",\"Principal\":\"##principal##\"}],\"Version\":\"2012-10-17\"}"
}
