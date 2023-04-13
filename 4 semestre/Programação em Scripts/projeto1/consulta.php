<?php
  $mysqli = new mysqli("localhost","root","","projeto");

  if($mysqli -> connect_errno) {
    echo "Falha na conexão MySQL:" .$mysqli -> connect_error;
    exit();
  }else {
    echo "conectado";
  }

  //criando uma consulta SQL
  $query = "SELECT first_name, last_name FROM actor";
  //salvando o resultado
  $result = mysqli_query($mysqli, $query);

  echo "
        <table class='table table-dark table-striped'>
         <thead>
         <th>Nome</th>
         <th>Sobrenome</th>
         </thead>
         <tbody>
        ";

  //Precorrendo as listas do resultado
  while ($row = mysqli_fetch_row($result)) {
    print("<tr><td>".$row[0]."</td><td>".$row[1]."</td></tr>");
  } 
  echo "
        </tbody>
        </table>";

  $mysqli -> close();
?>