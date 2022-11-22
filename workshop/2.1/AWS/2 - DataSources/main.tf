resource "aws_kinesis_stream" "main" {
  name             = "${var.pubsub_name}-stream"
  shard_count      = 1
  retention_period = 48

  stream_mode_details {
    stream_mode = "PROVISIONED"
  }

  encryption_type = "KMS"
  kms_key_id      = data.aws_ssm_parameter.kinesis_key.value

}