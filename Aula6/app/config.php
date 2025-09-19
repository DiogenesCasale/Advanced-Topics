<?php
// app/config.php.example
// Copie para app/config.php e ajuste as credenciais se precisar.
// No ambiente Docker Compose, use host "db" (nome do serviço do MySQL).

$db_host = 'db';
$db_name = 'clientesdb';
$db_user = 'appuser';
$db_pass = 'app_pass123';
$charset = 'utf8mb4';

$dsn = "mysql:host={$db_host};dbname={$db_name};charset={$charset}";

try {
    $conn = new PDO($dsn, $db_user, $db_pass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    ]);
} catch (PDOException $e) {
    echo "Erro na conexão: " . $e->getMessage();
    exit;
}


