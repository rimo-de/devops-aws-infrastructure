# Three-Tier AWS Infrastructure & DevOps Automation

Microservices Voting Application
A distributed voting app where users cast votes for their favorite pet. The architecture consists of a Python/Flask vote frontend, Node.js results dashboard, .NET worker service, Redis queue, and PostgreSQL database—demonstrating a polyglot microservices pattern with containerized deployment.

## Problem & Goal of this Project

### Problem Statement: Modern applications are increasingly built as collections of microservices that must communicate reliably while remaining scalable, fault-tolerant, and easy to deploy. Manually provisioning AWS infrastructure, configuring EC2 instances, and deploying containerized services can be time-consuming, error-prone, and difficult to reproduce across environments. Without a standardized and automated approach, ensuring that all services work together seamlessly becomes a significant operational challenge

### Goal: The goal of this project is to provide a clear and reproducible DevOps solution for deploying containerized microservices on AWS. This repository demonstrates how to provision EC2 instances, install and configure Docker, and deploy multiple microservices so they operate as a cohesive system. The focus is on automation, consistency, and reliability, enabling teams to deploy and manage microservices efficiently in a real-world AWS environment

## Application Architecture (Microservices)

[Detailed explanation of Application architecture](./docs/application-architecture.md)

### Docker & Docker Compose (Local Setup)

[read more..](./docs/docker-setup.md)

### Infrastructure Design on AWS (High-Level)

[read more..](./docs/aws-infrastructure-design.md)

### Infrastructure Diagram (Visual)

[Detailed explanation of Infrastructure diagram](./docs/infrastructure-diagram.md)

### Terraform – Infrastructure as Code

[read more..](./docs/terraform-provisioning.md)

### Ansible – Manage resources on AWS

[read more..](./docs/ansible-deployment.md)

<!-- | Topic                            | Documentation Link                                      |
| -------------------------------- | ------------------------------------------------------- |
| Demo / Flow of the Running App   | [read more..](./docs/demo-and-flow.md)                  |
| Challenges & Troubleshooting     | [read more..](./docs/challenges-and-troubleshooting.md) |
| Add-ons / Improvements (If Any)  | [read more..](./docs/addons-and-improvements.md)        |
| Conclusion & Key Learnings       | [read more..](./docs/conclusion-and-learnings.md)       | -->
