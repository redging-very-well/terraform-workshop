# Provision a KMS key:
resource "aws_kms_key" "this" {
  description             = "Key for workshop exercises"
  deletion_window_in_days = 7
}

# Store its ARN in an SSM parameter:
resource "aws_ssm_parameter" "kms_key_arn" {
  name  = "/workshop/kms_key/arn"
  type  = "String"
  value = aws_kms_key.this.arn
}


# Store its ID in an SSM parameter:
resource "aws_ssm_parameter" "kms_key_id" {
  name  = "/workshop/kms_key/id"
  type  = "String"
  value = aws_kms_key.this.key_id
}
