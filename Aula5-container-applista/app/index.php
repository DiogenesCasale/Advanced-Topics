<?php
$config = include('config.php');

$servername = $config['servername'];
$username = $config['username'];
$password = $config['password'];
$dbname = $config['dbname'];
$dsn = "mysql:host=$servername;dbname=$dbname;charset=utf8mb4";

try {
    $conn = new PDO($dsn, $username, $password);

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    

    $sql = "SELECT * FROM Clientes";
    $query = $conn->query($sql);

    if ($query) {
    // --- Definição dos estilos para facilitar a leitura ---
    $table_style = "border-collapse: collapse; width: 100%; font-family: Arial, sans-serif; box-shadow: 0 2px 5px rgba(0,0,0,0.1);";
    $th_style = "background-color: #2c3e50; color: white; padding: 12px; text-align: left; border-bottom: 2px solid #34495e;";
    
    // Estilos para as células (<td>), incluindo a cor de fundo alternada
    $td_style_odd = "padding: 10px; border-bottom: 1px solid #ddd;";
    $td_style_even = "background-color: #f2f2f2; padding: 10px; border-bottom: 1px solid #ddd;";
    
    // --- Geração da Tabela ---
    echo "<table style='$table_style'>";
    
    echo "<tr>";
    echo "<th style='$th_style'>ID</th>";
    echo "<th style='$th_style'>Nome</th>";
    echo "<th style='$th_style'>Endereço</th>";
    echo "<th style='$th_style'>Cidade</th>";
    echo "<th style='$th_style'>Telefone</th>";
    echo "</tr>";

    $row_num = 0;
    while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
        // Decide qual estilo usar para a linha atual (par ou ímpar)
        $current_td_style = ($row_num % 2 == 0) ? $td_style_even : $td_style_odd;
        
        echo "<tr>";
        echo "<td style='$current_td_style'>" . htmlspecialchars($row['Id_Cliente']) . "</td>";
        echo "<td style='$current_td_style'>" . htmlspecialchars($row['Nome']) . "</td>";
        echo "<td style='$current_td_style'>" . htmlspecialchars($row['Endereco']) . "</td>";
        echo "<td style='$current_td_style'>" . htmlspecialchars($row['Cidade']) . "</td>";
        echo "<td style='$current_td_style'>" . htmlspecialchars($row['Telefone']) . "</td>";
        echo "</tr>";
        $row_num++;
    }
    echo "</table>";
} else {
        echo "Erro na consulta SQL!";
    }
} catch (PDOException $e) {
    echo "Falha na conexão: " . $e->getMessage();
}
