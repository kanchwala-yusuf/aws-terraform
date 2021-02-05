#provider "aws" {
#  region = "us-west-2"
#}

resource "aws_db_instance" "secureInstance" {
  allocated_storage                   = 20
  storage_type                        = "gp2"
  engine                              = "mysql"
  engine_version                      = "5.7"
  instance_class                      = "db.m5.xlarge"
  name                                = "mydb"
  backup_retention_period             = 90
  iam_database_authentication_enabled = true
  auto_minor_version_upgrade          = true
  username                            = "<some_random_username>"
}

resource "aws_db_instance" "rdsBackupDisbaled" {
  allocated_storage                   = 20
  storage_type                        = "gp2"
  engine                              = "mysql"
  engine_version                      = "5.7"
  instance_class                      = "db.m5.xlarge"
  name                                = "mydb"
  backup_retention_period             = 30
  iam_database_authentication_enabled = true
  username                            = "<some_random_username>"
}

resource "aws_db_instance" "rdsIamAuthDisabled" {
  allocated_storage                   = 20
  storage_type                        = "gp2"
  engine                              = "mysql"
  engine_version                      = "5.7"
  instance_class                      = "db.m5.xlarge"
  name                                = "mydb"
  backup_retention_period             = 90
  iam_database_authentication_enabled = true
  auto_minor_version_upgrade          = true
  publicly_accessible                 = false
  username                            = "<some_random_username>"
}

resource "aws_db_instance" "rdsOldCA" {
  allocated_storage                   = 20
  storage_type                        = "gp2"
  engine                              = "mysql"
  engine_version                      = "5.7"
  instance_class                      = "db.m5.xlarge"
  name                                = "mydb"
  backup_retention_period             = 30
  ca_cert_identifier                  = "rds-ca-2019"
  iam_database_authentication_enabled = true
  username                            = "<some_random_username>"
}
