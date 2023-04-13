

<!DOCTYPE html>
<html lang="pt-br">
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
    };

    function passaDados() {
      let xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if(this.readyState == 4 && this.status == 200) { //4 -> Requisição finalizada e resposta pronta / 200 -> OK (ta pronta e ta boa)
          document.getElementById("ajax").innerHTML = this.responseText; //coloca texto dentro da div ajax
        }
      };
      let nome = document.getElementById ("nome").value;
      let email = document.getElementById ("email").value;
      let url = "exibe.php?nome=" + nome + "&email=" + email;
      xhttp.open ("GET", url, true);
      xhttp.send();
    };

    function chamaXML() {
      let xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          ajeita(this);
        }
      };
      xhttp.open ("GET", "alunos.xml", true);
      xhttp.send();
    };

    function ajeita(xml) {
      var xmlDoc = xml.responseXML;
      var table = "<tr><th>Aluno(a)</th><th>Email</th></tr>";
      var x = xmlDoc.getElementsByTagName("aluno");
      for(var i = 0; i < x.length; i++) {
        table+= "<tr><td>" +
        x[i].getElementsByTagName("nome")[0].childNodes[0].nodeValue + "</td><td>" + 
        x[i].getElementsByTagName("email")[0].childNodes[0].nodeValue + "</td></tr>";
      }
      document.getElementById("tabela").innerHTML = table;
    };

  </script>

  <div class = "container mt-5" id = "ajax">
    <h2> clique no botão para usar o AJAX </h2>
    <button onclick = "chamaTexto()" class = "btn btn-success rounded-3">Mudar a pagina</button>
    <br>
    <label>Nome</label>
    <input type="text" id="nome">
    <br>
    <label>email</label>
    <input text id = "email">
    <br>
    <button onclick = "passaDados()" class = "btn btn-success rounded-3">enviar</button>
  </div>

  <div class = "mt-2">
    <button onclick = "chamaXML()" class="btn btn-warning rounded-3">Alunos</button>
    <table id="tabela" class="table table-dark"></table>
  </div>

</body>
</html>