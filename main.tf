resource "aws_s3_bucket" "example" {
  # This bucket name is only used during `terraform plan` and is never created.
  # Change it to a globally unique name if you intend to run `terraform apply`.
  bucket = "example-repro-aws-provider-startup"
}
