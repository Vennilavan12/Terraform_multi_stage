variable "region" {
  type    = string
  description = "The AWS region for the S3 bucket"
}
variable "ami" {
  description = "value"
}

variable "instance_type" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t2.xlarge"
  }
}
variable "bucket_name" {
  type    = map(string)
  description = "The name of the S3 bucket"
  default = {
    "dev" = "Dev Bucket"
    "stage" = "Stage Bucket"
    "prod" = "Prod Bucket"
  }
}