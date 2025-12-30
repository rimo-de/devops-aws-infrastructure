# Ansible Configuration & Deployment

This folder contains the Ansible setup used to configure the EC2 instances and deploy all microservices (frontend, backend, and database).

## Inventory & Configuration

- `inventory.ini` defines three host groups:  
  **frontend**, **backend**, and **database**
- `ansible.cfg` points Ansible to the inventory file and disables host key checking
- Python interpreter and SSH options are configured for smooth provisioning

## What the Playbook Does

### 🔧 Common Setup (All EC2 Hosts)

- Updates package manager (`apt update`)
- Installs Docker (`docker.io`)
- Starts + enables Docker service
- Adds **ubuntu** user to the `docker` group (no sudo needed)
- Resets SSH connection to apply group changes
- Installs Python Docker SDK (`python3-docker`) for Ansible Docker modules

### 🟦 Frontend Tier (Vote + Result Services)

- Pulls latest Docker images for **vote** and **result**
- Runs both containers with:
  - Port mappings (`80:80`, `81:80`)
  - Environment variables for Redis and PostgreSQL
  - Auto-restart policies

### 🟩 Backend Tier (Redis + Worker)

- Creates an internal Docker network (`backend_network`)
- Pulls and runs **Redis** container
- Pulls and runs **Worker** container with:
  - Redis hostname
  - PostgreSQL connection details

### 🟨 Database Tier (PostgreSQL)

- Pulls the latest PostgreSQL image
- Runs PostgreSQL with:
  - Port mapping (`5432:5432`)
  - Database user, password, and DB name
  - Auto-restart enabled

## Run the Playbook

From the `ansible/` directory:

```bash
ansible-playbook ansible-playbook.yml -i inventory.ini
```
