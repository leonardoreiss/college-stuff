<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>sintaxe</title>
  <link rel="shortcut icon" href="aa.png">
</head>
<body>
  
  <?php
    echo "Hello world";
    echo "<h1>Oi, eu sou o Éco</h1>";
    echo 
    "
    <script> 
      function exibe(){
        alert('Éco gerando JS');
      }
      </script>
      <br><button onclick='exibe()'>Clique</button>
      ";

    $meio="Ipiranga ouviram o brado retumbante ";
    $fim="de um povo heróico. </h2>";
    echo"<h2>As margens plácidas do ".$meio.$fim;  

    $a=15;
    $b=16;
    print $a + $b;

    $aa="15";
    $bb="16";
    print " ". $aa + $bb;

    $aaa="15";
    $bbb="16";
    print " ". $aaa.$bbb;

    $num=123;
    printf(" "."%2.f", $num);

    $a="14.500";
    $b="16.500";
    print " ". $a+$b;

    $a="14.500";
    $b="16.500";
    print " ". $a.$b;

    for($i=1;$i<=10; $i++){
      echo"<p>Linha".$i."</p>";
    }

    $cores = array("preto", "amarelo", "vermelho", "branco");
    foreach($cores as $cor){
      echo $cor."/";
    }

    $x=1;

    while($x < 5) {
      echo "Número: $x <br>";
      $x++;
    }

    $x=1;
    do{
      echo"Numero: $x <br>";
      $x++;
    }while($x < 5);
  ?>
</body>
</html>