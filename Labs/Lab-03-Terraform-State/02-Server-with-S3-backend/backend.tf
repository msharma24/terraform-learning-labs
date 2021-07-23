# Configure the Terraform S3 backend
backend "s3" {
  # Make  sure to change this bucket name and region to match an S3 Bucket \
  # you have already created!
  bucket = "<ENTER-S3-Bucket-Name>"
  region = "ap-southeast-2"
  key    = "terraform.tfstate"
}
