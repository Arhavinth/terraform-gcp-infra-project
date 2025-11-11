Terraform GCP Mini Project

Project Overview

This project demonstrates the automation of Google Cloud Platform (GCP) resources using Terraform, showcasing infrastructure-as-code (IaC) best practices.
It highlights practical skills in cloud networking, storage, IAM, and Terraform state management, designed for hands-on learning and portfolio demonstration.

Features

Provision GCP resources such as VPC, subnets, firewall rules, Compute Engine instances.

Modular Terraform setup for reusable and maintainable infrastructure code.

Remote state management using GCS (Google Cloud Storage) for collaborative workflows.

Git integration with .gitattributes configured for Terraform providers via Git LFS.

Error handling and debugging implemented in Terraform scripts to prevent misconfigurations.

Project Structure
terraform-gcp-mini-project/
│
├─ modules/             # Reusable modules (VPC, Compute, Firewall)
│   └─ <module_name>/
├─ main.tf              # Main Terraform configuration
├─ variables.tf         # Input variables
├─ outputs.tf           # Output values
├─ backend.tf           # GCS backend configuration for remote state
├─ .gitattributes       # LFS configuration for Terraform providers
└─ README.md            # Project documentation

Setup & Usage

Clone the repository

git clone <repo_url>
cd terraform-gcp-mini-project


Initialize Terraform

terraform init


Plan the deployment

terraform plan


Apply the infrastructure

terraform apply


Destroy resources after testing

terraform destroy


Learning Outcomes :

Make sure your GCP credentials are set via gcloud auth login or a service account key.

Hands-on experience with Terraform modules and GCP services.

Understanding IaC best practices and remote state management.

Integration of Git LFS for Terraform provider files.

Debugging and resolving common Terraform errors.


Project Importance :

This project demonstrates real-world cloud automation skills and serves as a portfolio-ready showcase for cloud engineer roles. It highlights:

Efficient, reusable Terraform code

Secure and collaborative state management

Ability to provision scalable cloud resources


Tech Stack :

Terraform – Infrastructure as Code

Google Cloud Platform (GCP) – Compute, Networking, Storage

Git + Git LFS – Version control and large file management
