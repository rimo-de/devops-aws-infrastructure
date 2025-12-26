# 🧠 Microservices Voting Application – Cloud & DevOps Automation

This project is a hands-on exploration of how to deploy a small microservices application on AWS using a full DevOps toolchain: Terraform for infrastructure, Ansible for host configuration, and Docker for containerized services.

The app itself is a simple (but realistic) distributed system where users vote for their favorite pet, and results update live. It’s built using multiple languages and stacks to replicate a real polyglot microservices environment.

## 🎯 Problem & Goal of This Project

- 🔍 Problem Statement

Modern applications are increasingly built as collections of microservices that must communicate reliably while remaining scalable, fault-tolerant, and easy to deploy.

Manually provisioning AWS resources, configuring EC2 instances, and deploying multiple containers is:

- ❌ Time-consuming
- ❌ Error-prone
- ❌ Hard to reproduce
- ❌ Difficult to maintain across environments

Without automation, ensuring all microservices work together seamlessly becomes a major operational challenge.

- 🎯 Goal

The goal of this project is to build a clear, repeatable, automated DevOps workflow for deploying containerized microservices on AWS.

This repository demonstrates how to:

- Provision EC2 instances and networking using Terraform
- Install and configure Docker using Ansible
- Deploy multiple microservices that function as a cohesive distributed system
- Enable automated, consistent, and reliable deployments

## 🧩 Application Architecture (Microservices)

This microservices voting app consists of:

- Python / Flask → Vote frontend
- Node.js → Live results dashboard
- .NET Worker → Background worker service
- Redis → Queue for incoming votes
- PostgreSQL → Database for persistent storage

👉 Detailed explanation of the application architecture

## 📘 Documentation Index

| Topic                                        | Documentation Link                                                                 |
| -------------------------------------------- | ---------------------------------------------------------------------------------- |
| 1. Docker & Docker Compose (Local Setup)     | [Dockerisation of applications](./docs/docker-setup.md)                            |
| 2. Infrastructure Design on AWS (High-Level) | [High level Infrastructure design](./docs/aws-infrastructure-design.md)            |
| 3. Infrastructure Diagram (Visual)           | [Detailed explanation of Infrastructure diagram](./docs/infrastructure-diagram.md) |
| 4. Terraform – Infrastructure as Code        | [Terraform Provisioning as modules](./docs/terraform-provisioning.md)              |
| 5. Ansible – Manage resources on AWS         | [Ansible playbook](./docs/ansible-deployment.md)                                   |

## 🔧 Testing & Add-ons

| Topic                             | Documentation Link                                                       |
| --------------------------------- | ------------------------------------------------------------------------ |
| 6. Demo / Flow of the Running App | [Testing the services](./docs/demo-and-flow.md)                          |
| 7. Challenges & Troubleshooting   | [Challenges & Troubleshooting](./docs/challenges-and-troubleshooting.md) |
| 8. Add-ons / Improvements         | [Add-ons & Improvements](./docs/addons-and-improvements.md)              |
| 9. Conclusion & Key Learnings     | [Conclusion](./docs/conclusion-and-learnings.md)                         |

## 🏗 High-Level Project Overview

This repository ties together multiple DevOps practices into a single, cohesive workflow:

1. Infrastructure as Code (Terraform) — VPC, subnets, EC2, security groups
2. Configuration as Code (Ansible) — Installing Docker, setting up the environment
3. Containerized Microservices (Docker) — Deploying the voting app
4. Automated Deployment — One command to configure and deploy to AWS
5. Documentation — Clear steps, diagrams, and explanations throughout the repo

This is a simplified but realistic version of how modern cloud-native deployments operate.

## 🚀 How to Use This Project (Quick Start)

1️⃣ Provision AWS Infrastructure

```terraform
cd terraform
terraform init
terraform plan
terraform apply
```

This creates the VPC, EC2 instances, networking, and security configuration.

2️⃣ Configure EC2 Instances with Ansible

```ansible
cd ../ansible
ansible-playbook -i inventory setup.yml
```

This installs Docker and prepares each instance for deployment.

3️⃣ Deploy the Microservices
ansible-playbook -i inventory deploy-app.yml

This step runs all containers on the configured EC2 instances.

4️⃣ Access the Application

Use the public IP output from Terraform:

- Visit the vote service to cast votes
- Open the results dashboard to see live updates

🙌 Final Thoughts

This project is designed to be a learning-focused but realistic DevOps workflow that ties together:

- Infrastructure automation
- Configuration management
- Container orchestration
- Documentation and reproducibility
