

# Development Guide

## 2. Development Workflow

### 2.1 Clone Project

```bash
git clone <repo-url>
cd project
```
---

### 2.2 Start Database

Chạy MySQL và Adminer bằng Docker:
```bash
docker compose up -d
```

---
### 2.3 Build Application
Build project bằng Maven:

```bash
mvn clean package
```
Sau khi build xong, file WAR sẽ nằm tại:

```
target/struts-demo.war
```

Deploy WAR này vào **Tomcat**.

---

### 2.4 Create Feature Branch

Luôn tạo branch từ `develop`:

```bash
git checkout develop
git checkout -b feature/player-search
```

---

### 2.5 Commit Changes

Add và commit code:

```bash
git add .
git commit -m "feat: add player search feature"
```

Commit message convention:

```
feat: new feature
fix: bug fix
refactor: code improvement
docs: documentation
```

---

### 2.6 Push Branch

Push branch lên remote:

```bash
git push origin feature/player-search
```

Sau đó tạo **Pull Request vào `develop`**.

---

# Code Architecture

## Layer Responsibilities

### Action Layer

Responsible for:

```
Handle HTTP requests
Validate input
Call service layer
```

---

### Service Layer

Responsible for:

```
Business logic
Transaction control
Orchestrate multiple mappers
```

---

### Mapper Layer

Responsible for:

```
SQL queries
Database interaction
Object mapping via MyBatis
```

---

# Docker Development Environment

Database được chạy bằng Docker để đảm bảo **môi trường phát triển đồng nhất giữa các developer**.

---

## Docker Compose

File cấu hình:

```
docker-compose.yml
```

Services:

```
mysql
adminer
```

---

## Start Environment

Chạy environment:

```bash
docker compose up -d
```

Containers sẽ được tạo:

```
mysql
adminer
```

---

## Database Access

### MySQL

```
Host: localhost
Port: 3306
Database: demo_struts
User: appuser
Password: app123
```

---

### Adminer

Truy cập:

```
http://localhost:8000
```

---

## Database Initialization

Database schema và sample data được load tự động từ:

```
db/init.sql
```

MySQL Docker image sẽ tự động chạy tất cả file SQL nằm trong:

```
/docker-entrypoint-initdb.d/
```

Điều này đảm bảo rằng khi một developer mới:

```
clone project
docker compose up
```

→ database sẽ được **khởi tạo và seed tự động**.

---

## Reset Database

Để reset database về trạng thái ban đầu:

```bash
docker compose down -v
docker compose up
```

MySQL volume sẽ bị xoá và database sẽ được khởi tạo lại từ `init.sql`.

---

# Local Development Checklist

Trước khi bắt đầu development cần đảm bảo đã cài đặt:

```
Java 8+
Maven
Docker
Tomcat
```

Run sequence:

```bash
docker compose up
mvn package
deploy WAR to Tomcat
```

