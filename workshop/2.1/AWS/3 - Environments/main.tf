resource "aws_kinesis_stream" "main" {
  name             = "${var.env_name}-${var.pubsub_name}-stream"
  shard_count      = 1
  retention_period = var.message_ttl

  stream_mode_details {
    stream_mode = "PROVISIONED"
  }

  encryption_type = "KMS"
  kms_key_id = data.aws_ssm_parameter.kinesis_key.value

}