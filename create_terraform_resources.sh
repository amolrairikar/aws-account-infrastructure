#!/bin/bash

# Read all variables from .env file as environment variables
export $(grep -v '^#' .env | xargs)

# Prompt the user to enter the directory in which to run Terraform commands
read -p "Enter the directory from which to create Terraform resources: " terraform_dir

# Check if the directory exists
if [ ! -d "$terraform_dir" ]; then
  echo "Directory $terraform_dir does not exist."
  exit 1
fi

# Change to the specified directory
cd "$terraform_dir" || exit

# Initialize Terraform
echo "Initializing Terraform..."
terraform init

# Plan the Terraform configuration
echo "Planning Terraform configuration..."
terraform plan -out=tfplan

# Apply the Terraform configuration
echo "Applying Terraform configuration..."
terraform apply -auto-approve tfplan

# Change back to the original directory
cd .. || exit
