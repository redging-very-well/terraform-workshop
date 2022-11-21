data "aws_ssm_parameter" "kinesis_key" {
  name = "/workshop/kms_key/id"
}