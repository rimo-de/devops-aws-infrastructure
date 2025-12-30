# Terraform Provisioning

This folder contains the Terraform configuration used to provision the AWS infrastructure for the microservices voting application.

## Module Structure

For better readability and reuse, the infrastructure is split into separate modules under `./modules`:

- `vpc` – VPC, subnets, and basic networking
- `security-groups` – security group definitions
- `key-pairs` – SSH key pair configuration
- `ami` – AMI lookup or definition
- `ec2` – EC2 instance configuration

All of these modules are wired together and called from `main.tf`, which acts as the single entry point for provisioning.

## How to Run

From the `terraform/` directory:

## Initialize providers and download modules

```bash
terraform init
```

!(../img/1_Terraform.png)

## Validate the configuration

```bash
terraform validate
```

!(../img/2_Terraform.png)

## Review the execution plan

```bash
terraform plan
```

!(../img/3_Terraform.png)

## Apply the changes to create the infrastructure

```bash
terraform apply --auto-approve
```

!(../img/4_Terraform.png)

!(../img/5_Terraform.png)

## You can then destroy the resources when you’re done

```bash
terraform destroy
```
