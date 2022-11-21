data "aws_kms_key" "kinesis_key" {
  key_id = "alias/kinesis-kms-key"
}