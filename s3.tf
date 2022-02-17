resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.infra_env}-s3-bucket-${random_id.prefix.hex}"

  tags = {
    Name = "${var.infra_env}-s3-bucket-${random_id.prefix.hex}"
  }
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.s3_bucket.id
    acl    = "private"
}

resource "aws_s3_bucket_policy" "s3_policy" {
  bucket = aws_s3_bucket.s3_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "${var.infra_env}-s3-public"
    Statement = [
      {
        Sid       = "PublicRead"
        Effect    = "Allow"
        Principal = "*"
        Action = [
          "s3:GetObject",
          "s3:GetObjectVersion"
        ],
        Resource = [
          aws_s3_bucket.s3_bucket.arn,
          "${aws_s3_bucket.s3_bucket.arn}/*",
        ]
      },
    ]
  })
}