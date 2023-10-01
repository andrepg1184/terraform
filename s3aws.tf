resource "aws_s3_bucket" "bucketawsterraform" {
  bucket = random_pet.bucket.id

  tags = local.common_tags
}

resource "aws_s3_object" "this" {
  bucket = aws_s3_bucket.bucketawsterraform.bucket
  key    = "config/${local.ip_filepath}"
  source = local.ip_filepath
  etag   = filemd5(local.ip_filepath)
}