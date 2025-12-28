# Outputs
Terraform AWS VPC
This module creates the following resources.

VPC
IGW
2 Public subnets in us-east-1a and us-east-1b AZ
2 Private subnets in us-east-1a and us-east-1b AZ
2 Database subnets in us-east-1a and us-east-1b AZ
Public Route table
Private Route table
Database Route table
EIP for NAT
NAT Gateway in public subnet 1a az
IGW route is added to public route table
NAT gateway route to private and database route tables
Route table association with subnets
VPC to default VPC peering
Public route table to default VPC route
Default VPC main route table to created VPC route
Inputs
vpc_cidr - (Required). User must supply the CIDR for VPC.
project_name - (Required). User must supply the project nae.

# 🛠️ Terraform AWS VPC

A Terraform configuration to provision and manage a Virtual Private Cloud (VPC) and associated networking resources in AWS using Infrastructure as Code (IaC).
This module allows you to create a secure and isolated network environment with subnets, route tables, gateways, NAT, and peering configurations using declarative Terraform resources.

# 🧠 About

This repository contains Terraform code to provision an AWS Virtual Private Cloud (VPC) with related networking constructs such as subnets (public, private, database), routing tables, NAT gateways, internet gateway, and VPC peering.
Using Terraform lets you manage infrastructure in a reproducible, scalable, and version-controlled way. 
Terraform Registry

## 📦 Resources Created

This Terraform configuration may create (depending on variables):

✔ VPC with a specified CIDR block  
✔ Public, Private, and Database subnets  
✔ Internet Gateway (IGW)  
✔ NAT Gateways  
✔ Public, Private, and Database Route Tables  
✔ Route Table associations  
✔ VPC Peering connections (optional)  
✔ Elastic IPs for NAT gateways

These networking constructs provide the foundation for deploying AWS services such as EC2, RDS, and container workloads. :contentReference[oaicite:2]{index=2}



## 🧰 Prerequisites

✔ **Terraform CLI** installed (v1.x or later)  
✔ An **AWS account** with IAM permissions to create networking resources  
✔ AWS credentials configured locally (e.g., via AWS CLI or environment variables)



## 🚀 Usage

### 1. Clone the Repository

git clone https://github.com/RajGitUser/terraform-aws-vpc.git
cd terraform-aws-vpc

2. Initialize Terraform
terraform init


This initializes the working directory and downloads the required provider plugins.

3. Review the Plan
terraform plan -var-file="terraform.tfvars"


This shows the infrastructure changes that Terraform will make.

4. Apply Configuration
terraform apply -var-file="terraform.tfvars"


Confirm the prompt to create the AWS VPC and related network resources.

# ⚙️ Terraform Workflow

Terraform follows a typical workflow:

Write the configuration in .tf files.

Init the environment to download plugins.

Plan to preview changes.

Apply to provision resources.

Destroy to tear down infrastructure when needed.

This workflow ensures predictable infrastructure changes and version control of cloud architecture.

# 📌 Variables

Input variables allow customization of your VPC deployment, such as:

vpc_cidr – CIDR block to use for the VPC (required) 
GitHub

project_name – Name tag applied to resources (required) 
GitHub

Add more variable definitions to variable.tf and provide values in terraform.tfvars.

# 📤 Outputs

Outputs may include:

VPC ID

Subnet IDs

Route Table IDs

Peering Connection ID (if configured)

These values can be referenced by other Terraform configurations or deployment tooling.

# 📈 Best Practices

Use a remote backend (e.g., S3, Terraform Cloud) to store and share state securely.

Structure configurations using modules for reusability.

Tag resources consistently for tracking and cost management.

Avoid hardcoding sensitive credentials by using variables or environment configuration. 
HashiCorp Developer

# 🤝 Contributing

Contributions are welcome! You can help by:

Adding examples and environment configurations

Modularizing the VPC configuration

Improving documentation and variable descriptions

Fork the repository

Create a feature branch

Submit a Pull Request
