//provider "aws" {
//  region = "us-west-2"
//}

resource "aws_cloudtrail" "missing-multi-region" {
  name                          = "tf-trail-foobar"
  s3_bucket_name                = "some-s3-bucket"
  s3_key_prefix                 = "prefix"
  include_global_service_events = true
}

resource "aws_cloudtrail" "false-multi-region" {
  name                          = "tf-trail-foobar"
  s3_bucket_name                = "some-s3-bucket"
  s3_key_prefix                 = "prefix"
  include_global_service_events = true
  is_multi_region_trail         = true

}

resource "aws_cloudtrail" "missing-kms" {
  name                          = "missing-kms"
  s3_bucket_name                = "some-s3-bucket"
  s3_key_prefix                 = "prefix"
  include_global_service_events = true
}

resource "aws_cloudtrail" "with-kms" {
  name                          = "with-kms"
  s3_bucket_name                = "some-s3-bucket"
  s3_key_prefix                 = "prefix"
  include_global_service_events = true
  kms_key_id                    = "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
}
