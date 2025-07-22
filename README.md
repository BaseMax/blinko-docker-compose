# blinko-docker-compose

This repository contains the `docker-compose` configuration for deploying the [Blinko](https://github.com/BlinkoSpace) web application along with a PostgreSQL database. It provides a ready-to-run Docker environment for local development or production deployments.

## 🚀 Overview

The stack includes:

- **Blinko Web App** (`blinkospace/blinko:1.2.2`)
- **PostgreSQL Database** (`postgres:14`)

All services are configured to restart automatically and include health checks to ensure reliability.

---

## 📁 Project Structure

```

blinko-docker-compose/
├── .env.example         # Environment variables template
├── docker-compose.yml   # Main Docker Compose config
├── postgres/            # PostgreSQL data volume
├── data/                # Persistent volume for Blinko app
├── .gitignore
├── LICENSE
└── README.md

````

---

## ⚙️ Environment Variables

Copy `.env.example` to `.env` and fill in the required values:

```bash
cp .env.example .env
````

Required variables:

* `NEXT_AUTH`: Your NextAuth secret
* `PG_PASS`: Password for PostgreSQL user `blinko`

---

## 🐳 Usage

### 1. Clone the repository

```bash
git clone https://github.com/BaseMax/blinko-docker-compose.git
cd blinko-docker-compose
```

### 2. Set up your `.env` file

Edit `.env` using your credentials or secrets.

### 3. Start the stack

```bash
docker-compose up -d
```

To stop:

```bash
docker-compose down
```

---

## 📡 Services

| Service        | URL / Port                                     | Description          |
| -------------- | ---------------------------------------------- | -------------------- |
| blinko-website | [http://localhost:1111](http://localhost:1111) | Main Blinko frontend |
| postgres       | Internal only                                  | PostgreSQL database  |

---

## 📦 Volumes

* `data/` → persistent `.blinko` app data
* `postgres/` → persistent PostgreSQL data

---

## 🙏 Credits

Special thanks to [Daniel Cox](https://github.com/DC959) for his help and contributions.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

© 2025 Max Base
