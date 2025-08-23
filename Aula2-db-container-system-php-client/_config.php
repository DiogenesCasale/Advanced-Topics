<?php
$host = "localhost";      // Ou o endereço do seu servidor MySQL
$dbname = "namedb";       // O nome do seu banco de dados
$user = "logindb";        // Seu usuário do banco
$pass = "passworddb";     // Sua senha

try {
    // Conexão PDO para MySQL
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $user, $pass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch (PDOException $e) {
    echo "Erro na conexão: " . $e->getMessage();
}
?>
