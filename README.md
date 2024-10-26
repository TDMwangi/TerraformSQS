# Terraform SQS

This project provides an infrastructure-as-code solution to deploy AWS Simple Queue Service (SQS) using Terraform. It enables the provisioning and configuration of SQS queues, supporting attributes like message retention, visibility timeout, and encryption.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads) 1.0+
- AWS CLI with configured credentials
- An AWS account with permissions to create SQS queues

## Usage

### 1. Initialize Terraform

```sh
terraform init
```

### 2. Plan the Deployment

```sh
terraform plan
```

### 3. Apply the Deployment

```sh
terraform apply
```

### 4. Destroy the Deployment

To remove all resources, run:

```sh
terraform destroy
```
