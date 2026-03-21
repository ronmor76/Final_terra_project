provider "aws" {
    region = "us-east-1"
}

module "aws_iam_user_test" {
  source = "./modules/iam_user"
  user_name = "Elinor"
}

module "ec2" {
    source = "./modules/ec2"
    ec2_type = "t3.micro"
  
}

module "iam_user" {
  source = "./modules/iam_user"
  user_name = "Moti"
}