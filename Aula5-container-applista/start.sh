#!/bin/bash

# Inicia o serviço do MySQL
service mysql start

# Importa o arquivo init.sql (usar caminho absoluto para garantir)
mysql -u root < /root/banco.sql

# Cria um usuário padrão com permissões no banco
mysql -u root <<EOF
CREATE USER IF NOT EXISTS 'appuser'@'%' IDENTIFIED BY 'apppassword';
GRANT ALL PRIVILEGES ON diogenes.* TO 'appuser'@'%';
FLUSH PRIVILEGES;
EOF

# Inicia o Apache em foreground (mantém o container ativo)
exec apache2ctl -D FOREGROUND
