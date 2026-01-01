# Conclusion & Key Learnings

This project brought together multiple DevOps concepts into one end-to-end deployment on AWS. By combining Terraform, Ansible, Docker, and microservices, the entire stack was automated — from provisioning infrastructure to configuring servers and running application containers.

## Key Learnings

### Infrastructure as Code

- Gained confidence using **Terraform modules**, variables, state management, and referencing outputs.
- Understood how VPCs, subnets, routing, and security groups work together on AWS.

### Configuration & Automation

- Learned how **Ansible** interacts with EC2 instances using inventory files, SSH configs, and YAML playbooks.
- Understood how to automate software installation, Docker setup, and microservice deployment.

### Microservices Architecture

- Saw how independent services communicate using Redis and PostgreSQL.
- Understood how environment variables, networking, and containers link the system together.

### AWS Networking & Access

- Improved understanding of **public vs private subnets**, bastion access using ProxyJump, and port-level restrictions.
- Realised how small networking mistakes (keys, SG rules, routes) affect accessibility.

### Troubleshooting & Iteration

- Encountered and solved issues with syntax errors, SSH authentication, YAML indentation, and service dependencies.
- Practiced debugging using logs, connectivity checks, Terraform outputs, and Ansible dry-runs.

## Final Thoughts

This project demonstrated how cloud infrastructure and DevOps tooling fit together to deploy a real microservices application. The hands-on experience strengthened skills across Terraform, Ansible, AWS, and containerization — and revealed clear pathways for further improvements such as high availability, cost optimization, and managed services.
