<!DOCTYPE html>
<html lang="en">
<head>
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.min.js" integrity="sha384-heAjqF+bCxXpCWLa6Zhcp4fu20XoNIA98ecBC1YkdXhszjoejr5y9Q77hIrv8R9i" crossorigin="anonymous"></script>
  
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ajax</title>
</head>
<body class = "bg-dark text-info text-center">
  <script> 
    function chamaTexto() {
      var xhttp = new XMLHttpRequest(); //cria uma requisição
      xhttp.onreadystatechange = function() { //aguarda uma resposta do servidor
        if(this.readyState == 4 && this.status == 200) { //4 -> Requisição finalizada e resposta pronta / 200 -> OK (ta pronta e ta boa)
          document.getElementById("ajax").innerHTML = this.responseText; //coloca texto dentro da div ajax
        }
      };
      xhttp.open("GET", "ajax.txt", true); //abre a requisição
      xhttp.send(); //Envia a requisição ao servidor
    }
  </script>
  <div class = "container mt-5" id = "ajax">
    <h2> clique no botão para usar o AJAX </h2>
    <button onclick = "chamaTexto()" class = "btn btn-success rounded-3">Mudar a pagina</button>
  </div>
</body>
</html>