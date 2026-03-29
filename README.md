# Final_terra_project
Final_terraform_3modules_project


This project uses Terraform to deploy AWS infrastructure using a modular approach. The infrastructure is divided into 3 main components separated into modules for reusability and easier management.
🏗️ Project Architecture (Modules)
The main.tf file orchestrates the following three modules:
IAM Module: Manages Identity and Access Management, including the creation of Users for secure access control.
S3 Module: Creates an S3 Bucket for file storage .
EC2 Module: Deploys a virtual server within the created VPC.

 Getting Started
Prerequisites
Terraform installed (version 1.0.0 or higher).
Configured AWS Account with appropriate IAM permissions (AdministratorAccess recommended for initial setup).
AWS CLI configured on your local machine (aws configure).

 Deployment Steps:
Initialization: Download providers and modules:
terraform init
Planning: Review the expected changes before execution:
terraform plan
Deployment: Apply the changes and create the resources:
terraform apply

 Key Variables
You can customize the deployment by updating your variables or terraform.tfvars file:
bucket_name: A globally unique name for the S3 Bucket (avoid underscores and existing names).
iam_user_name: The name for the IAM user to be created.
instance_type: The server instance type (e.g., t2.micro).

 Outputs
Upon successful completion, the following information will be displayed:
aws iam list-users: The Amazon Resource Name of the created IAM users.
s3_bucket_id: The unique name (ID) of the S3 Bucket.
public_ip: The public IP address of the EC2 instance.