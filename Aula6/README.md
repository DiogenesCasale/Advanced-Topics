# App PHP + MySQL + phpMyAdmin com Docker Compose

Este projeto cria um ambiente completo para rodar sua aplicação PHP, com banco de dados MySQL e interface de gerenciamento via phpMyAdmin.

## Estrutura do Projeto
```
.
├─ app/
│  ├─ index.php
│  └─ config.php.example
├─ mysql/
│  └─ init.sql
├─ docker-compose.yml
├─ Dockerfile
└─ README.md
```

## 🛠 Pré-requisitos
- [Docker](https://www.docker.com/get-started) instalado e rodando.
- [Docker Compose](https://docs.docker.com/compose/) (ou o `docker compose` embutido no Docker Desktop).

## Como Executar

### 1. Configurar credenciais
Crie seu arquivo `app/config.php` a partir do exemplo:
```bash
cp app/config.php.example app/config.php
```
Ajuste as credenciais se precisar. **No Docker Compose, o host do banco é `db`.**

---

### 2. Subir os containers
```bash
docker-compose up -d --build
```

Aguarde o download das imagens e inicialização.  
Depois acesse no navegador:

- **Aplicação PHP:** [http://localhost](http://localhost)
- **phpMyAdmin:** [http://localhost:8080](http://localhost:8080)  
  - Host: `db`  
  - Usuário: `appuser`  
  - Senha: `app_pass123`  
  (Ou use `root` / `rootpass123` para acesso root)

---

### 3. Parar e reiniciar containers

- **Parar containers e remover rede** (mas manter banco e imagens):
```bash
docker-compose down
```

- **Parar containers sem remover** (pode reiniciar rapidamente):
```bash
docker-compose stop
docker-compose start
```

- **Parar e remover containers + volumes** (⚠️ apaga banco de dados):
```bash
docker-compose down -v
```

---

### 4. Reconstruir imagem (após mudanças no código)
Sempre que alterar arquivos PHP ou o Dockerfile:
```bash
docker-compose build --no-cache app
docker-compose up -d
```

---

### 5. Ver logs
Para verificar se está tudo certo:
```bash
docker-compose logs -f
docker-compose logs -f app
docker-compose logs -f db
docker-compose logs -f phpmyadmin
```

---

### 6. Acessar o banco via terminal
```bash
docker-compose exec db mysql -uappuser -papp_pass123 -e "SHOW DATABASES;"
docker-compose exec db mysql -uappuser -papp_pass123 -e "USE clientesdb; SHOW TABLES;"
```

---

## 🧹 Resetando o Banco de Dados
Se quiser rodar de novo o `init.sql` e recriar o banco do zero:
```bash
docker-compose down -v
docker-compose up -d --build
```

---

## 📌 Observações
- **Volumes:** O banco é persistido em um volume Docker (`db_data`). Use `down -v` para apagar.  
- **Sem volumes para código:** O código PHP é copiado para dentro da imagem no build. Para ver mudanças, você precisa rebuildar a imagem (`docker-compose build app`).  
- **phpMyAdmin:** é útil para gerenciar tabelas, executar queries SQL e verificar dados rapidamente.

---

## 🐳 Serviços Criados

| Serviço     |    Container       |  Porta Local   |
|-------------|--------------------|----------------|
| Apache+PHP  | php_apache_fastapp | 80             |
| MySQL       | mysql_fastapp      | 3306 (interno) |
| phpMyAdmin  | phpmyadmin_fastapp | 8080           |

---
