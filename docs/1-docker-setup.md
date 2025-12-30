# Docker Compose Setup

This document describes how to run the multi-service voting application using Docker Compose. The stack consists of five services: `vote` (Python/Flask), `result` (Node.js), `worker` (.NET), `redis`, and `db` (PostgreSQL).

---

## 1. Project Structure

- `vote/` – Voting front-end (port `8080`)
- `result/` – Results dashboard (port `8081`)
- `worker/` – Background worker processing votes
- `healthchecks/` – Healthcheck scripts shared by `redis` and `db`
- `docker-compose.yml` – Orchestration of all services and networks

The `docker-compose.yml` file defines:

- Two networks: `front-tier` and `back-tier`
- A named volume `db-data` for PostgreSQL persistence
- Health checks for `redis` and `db`, which gate startup of `vote`, `result`, and `worker`
- Local source code mounted into the `vote` and `result` containers for live development

---

## 2. Starting the Stack

From the root of the project, run:

```bash
docker compose up -d
```

## Images

!(../img/Multi Services using Docker Compose 1.png)

!(../img/Multi Services using Docker Compose 2.png)

!(../img/Multi Services using Docker Compose 3.png)

!(../img/Multi Services using Docker Compose 4.png)
