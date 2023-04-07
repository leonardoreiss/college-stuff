function exibe() {
    let n1 = document.getElementById("num1").value;
    let n2 = document.getElementById("num2").value;
    let resultado = multiplicar(n1, n2);
    document.getElementById("resultado").innerHTML = resultado;
}

function multiplicar(num1, num2) {
    return num1 * num2;
} 

function uf() {
    const minhaUF = document.getElementById("uf").value;
    switch(minhaUF)
    {
        case "AC" || "ac" :	
            alert("Sou acriano");					
            break;
        case "AC": alert("Acreano"); break;
        case "ac": alert("Acreano"); break;
        case "ES" || "es" :	
            alert("Sou Capixaba");					
            break;
        case "RN" ||"rn" :	
            alert("Sou potiguar");					
            break;
        case "RJ" || "rj":	
            alert("Sou Fluminense");					
            break;
        case "RS" || "rs":	
            alert("Sou Gaucho");					
            break;
        default: 
            alert("Sou de "+ minhaUF);
    }
}

function sCurso(){ 

    let sigla = document.getElementById("s").value;

    switch(sigla) {
        case "ADS" :
            alert("Analise e Desenvolvimento de Sistemas");
            break; 
        case "ADM" :
            document.getElementById("curso").innerHTML = "Administração";
            break; 
        case "MED" :
            document.getElementById("curso").innerHTML = "Medicina";
            break;
        case "SI" :
            document.getElementById("curso").innerHTML = "Sistemas de Informação";
            break;
        default:
            alert("Sem curso disponivel");
    }

}