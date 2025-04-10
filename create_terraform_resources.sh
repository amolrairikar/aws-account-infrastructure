#!/bin/bash

# Prompt the user to enter the directory in which to run Terraform commands
read -p "Enter the directory from which to create Terraform resources: " terraform_dir

# Check if the directory exists
if [ ! -d "$terraform_dir" ]; then
  echo "Directory $terraform_dir does not exist."
  exit 1
fi

# Change to the specified directory
cd "$terraform_dir" || exit

# Read all variables from .env file as environment variables
export $(grep -v '^#' .env | xargs)

# Initialize Terraform
echo "Initializing Terraform..."
if [ "$terraform_dir" != "remote_state" ]; then
  echo "Directory is $terraform_dir, initializing Terraform with remote S3 backend configuration..."
  terraform init \
    -backend-config="bucket=${S3_STATE_BUCKET_NAME}" \
    -backend-config="key=${S3_STATE_BUCKET_KEY}" \
    -backend-config="region=${REGION}" \
    -backend-config="assume_role={role_arn=\"${TF_VAR_infra_role_arn}\", session_name=\"terraform-session\"}"
else
  echo "Directory is $terraform_dir, initializing Terraform with default backend..."
  terraform init
fi

# Plan the Terraform configuration
echo "Planning Terraform configuration..."
terraform plan -out=tfplan

# Apply the Terraform configuration
echo "Applying Terraform configuration..."
terraform apply -auto-approve tfplan

# Change back to the original directory
cd .. || exit
