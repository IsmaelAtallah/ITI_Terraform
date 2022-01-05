terraform {
 backend "s3" {
 bucket = "som3a-bucket"
 key = "terraform/terraform.tfstate"
 region = "us-east-1"
 encrypt = true

 }
}