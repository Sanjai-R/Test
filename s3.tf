resource "aws_s3_bucket" "test-bucket" {
  count         = length(var.bucket_prefix)
  bucket_prefix = var.bucket_prefix[count.index]
  acl           = var.acl[count.index]
  versioning {
    enabled = var.versioning[count.index]
  }
}
