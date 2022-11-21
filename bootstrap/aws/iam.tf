resource "aws_iam_user" "workshop" {
  name = "workshop"
}

resource "aws_iam_access_key" "workshop" {
  user = aws_iam_user.workshop.name
}

resource "aws_iam_user_policy" "workshop" {
  name = "workshop"
  user = aws_iam_user.workshop.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "kinesis:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "kms:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
