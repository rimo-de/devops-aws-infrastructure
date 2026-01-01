# Challenges & Troubleshooting

This section highlights the key issues encountered during the project and how they were resolved.

## 1. Terraform-Related Challenges

- Faced syntax errors while writing Terraform code.
- Resolved them by researching online, checking HCL documentation, and using ChatGPT for clarification.
- Learned how to structure Terraform code using **modules** for better readability and reuse.

## 2. Ansible Playbook Complexity

- Writing the YAML playbook took considerable time due to indentation rules and module usage.
- Multiple iterations were required to correctly install Docker, manage services, and deploy containers.

## 3. Infrastructure Design Guidance

- Took support from **Yacine (trainer)** to finalize the infrastructure layout.
- Started with a simple, clear design before moving into advanced patterns.

### Final Design Choices

- **Three-tier setup**: frontend (public), backend and database (private).
- **Security groups** used to strictly control inbound/outbound access between tiers.
- **Bastion configuration**: backend and database accessible only through the frontend instance using SSH `ProxyJump`.
- **Docker-based deployment**: all microservices deployed as Docker containers for consistency.

## 4. Overall Takeaways

- Most issues were solved through documentation, trial and error, mentorship, and understanding AWS networking rules.
- The troubleshooting process helped build confidence in Terraform, Ansible, and cloud infrastructure basics.
