<?php
$serverName = "servernamedb"; 
$database   = "namedb"; 
$username   = "logindb"; 
$password   = "passworddb";

try {
    $conn = new PDO("sqlsrv:server=$serverName;Database=$database;TrustServercertificate=false", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    } catch (PDOException $e) {
    echo "Erro na conexão: " . $e->getMessage();
}
?> 