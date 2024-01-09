provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  region = var.region
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}

module "s3_bucket" {
  source      = "./modules/s3"
  region      = var.region
  bucket_name = lookup(var.bucket_name, terraform.workspace, "Dev Bucket")
  
}
