# aws-account-infrastructure
A repository containing Terraform code defining all infrastructure in a personal AWS account

# How to run Terraform using repo
Following the below steps allows for provisioning infrastructure using Terraform:
  - Create a .env file in the folder you are working in and add any variables Terraform needs using the TF_VAR prefix
  - In your terminal, make the shell script executable by running `chmod +x create_terraform_resources.sh`
  - Run the shell script by entering `source ./create_terraform_resources.sh` in the terminal