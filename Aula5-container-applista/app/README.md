https://hub.docker.com/repository/docker/diogenescasale/applista/general

## Comandos necessários no prompt:

* docker build -t diogenescasale/applista .
* docker run -d -p 8080:80 --name meu-container-php diogenescasale/applista


# Projeto Aplicação PHP com Docker

Este projeto contém uma aplicação web simples em PHP que se conecta a um banco de dados MySQL. Todo o ambiente (Servidor Web Apache, PHP, e MySQL) é configurado para ser executado dentro de um contêiner Docker, garantindo portabilidade e facilidade de uso.

## Estrutura do Projeto

* `Dockerfile`: Arquivo de receita para construir a imagem Docker com todas as dependências (Ubuntu, Apache, MySQL, PHP).
* `banco.sql`: Script SQL que cria o banco de dados `diogenes`, a tabela `Clientes` e insere 30 registros de exemplo.
* `start.sh`: Script de inicialização do contêiner. Ele inicia o serviço do MySQL, importa os dados do `banco.sql`, cria um usuário para a aplicação e, por fim, inicia o servidor Apache.
* `app/`: Pasta que deve conter os arquivos da sua aplicação PHP (ex: `index.php`, `conexao.php`, etc.).

## Pré-requisitos

* Docker instalado e em execução na sua máquina.

## Como Executar o Contêiner

Siga os passos abaixo no seu terminal, na mesma pasta onde se encontra o `Dockerfile`.

### 1. Construir a Imagem Docker

Primeiro, precisamos construir a imagem a partir do `Dockerfile`. Este comando irá baixar as dependências e configurar o ambiente conforme especificado.

```bash
docker build -t meu-app-php .
```

* `docker build`: O comando para construir uma imagem.
* `-t meu-app-php`: A flag `-t` (tag) dá um nome à imagem, neste caso, `meu-app-php`.
* `.`: Indica que o contexto da construção (onde o `Dockerfile` está) é o diretório atual.

### 2. Executar o Contêiner

Com a imagem criada, podemos iniciar um contêiner a partir dela.

```bash
docker run -d -p 8080:80 --name meu-container-php meu-app-php
```

* `docker run`: O comando para criar e iniciar um contêiner.
* `-d`: Roda o contêiner em modo "detached" (em segundo plano).
* `-p 8080:80`: Mapeia a porta `8080` da sua máquina para a porta `80` do contêiner. Isso permite que você acesse o servidor Apache.
* `--name meu-container-php`: Dá um nome fácil de lembrar ao contêiner em execução.
* `meu-app-php`: O nome da imagem que queremos usar para criar o contêiner.

### 3. Acessar a Aplicação

Após o contêiner iniciar, abra seu navegador e acesse a aplicação:

**[http://localhost:8080](http://localhost:8080)**

Você deverá ver sua aplicação PHP funcionando e exibindo os dados que foram inseridos na tabela `Clientes`.

## Repositório no Docker Hub

Para enviar sua imagem para o Docker Hub, você primeiro precisa ter uma conta e estar logado no seu terminal (`docker login`).

**1. Taguear a imagem:**
Você precisa renomear (taguear) a imagem local para o formato `<seu-usuario>/<nome-da-imagem>`.

```bash
docker tag meu-app-php <seu-usuario>/diogenes-app:latest
```
*Substitua `<seu-usuario>` pelo seu nome de usuário no Docker Hub.*

**2. Enviar a imagem (Push):**
Agora, envie a imagem tagueada para o repositório.

```bash
docker push <seu-usuario>/diogenes-app:latest
```

Após o envio ser concluído, o endereço do seu repositório será:


**`https://hub.docker.com/r/<seu-usuario>/diogenes-app`**
