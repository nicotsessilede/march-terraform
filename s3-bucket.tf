resource "aws_s3_bucket" "example-aws_s3_bucket" {
  #bucket = "${var.bucket_name}-${count.index}"
  bucket = each.value.name
  #count = 2
  for_each = var.each_bucket
  tags = {
    Name = each.key
  }
}

/* resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example-aws_s3_bucket.id
  versioning_configuration {
    status = var.s3_visioning_status
  }
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.example-aws_s3_bucket.id
  key    = var.s3_folder_name

} */