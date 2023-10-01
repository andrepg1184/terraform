output "bucket_name" {
  value = aws_s3_bucket.bucketawsterraform.bucket
}

output "bucket_arn" {
  value       = aws_s3_bucket.bucketawsterraform.arn
  description = ""
}

output "bucket_domain_name" {
  value = aws_s3_bucket.bucketawsterraform.bucket_domain_name
}

output "ips_file_path" {
  value = "${aws_s3_bucket.bucketawsterraform.bucket}/${aws_s3_object.this.key}"
}