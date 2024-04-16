terraform {
  backend "s3" {
    bucket         = "project05-terraform-state"
    region         = "ap-northeast-2"
    key            = "infra/ec2/alb/terraform.tfstate"
    dynamodb_table = "project05-terraform-locks"
    encrypt        = true
  }
}