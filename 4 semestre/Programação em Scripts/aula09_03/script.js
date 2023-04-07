console.log("Hello World!");

let x = 12;
console.log(x);
x = "fff";
console.log(x);


exibirAsterisco(50);

function exibirAsterisco(linhas)
{
    let cout = '*';
    for(let i = 1; i <= linhas; ++i)
    {
        console.log(cout);
        cout = cout + '*';
    }
}

const z1 = 12;
var   z2 = 12;
let   z3 = 12;


/*
x = y   -> atribuição
x += y  -> x = x + y (serve para todas as operações (* / - + % **))


    == igual a 
    === exatamente igual a (mesmo tipo)
    != diferente
    !== Diferente e de outro tipo
    > Maior que 
    < menor que
    >= maior igual
    <= menor igual
    ? ternario

    && (and)
    || (or)
    !  (not)

*/
