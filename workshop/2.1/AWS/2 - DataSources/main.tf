resource "aws_kinesis_stream" "main" {
  name             = "${var.pubsub_name}-stream"
  shard_count      = 1
  retention_period = 48

  stream_mode_details {
    stream_mode = "PROVISIONED"
  }

  kms_key_id = data.aws_kms_key.kinesis_key.id
}