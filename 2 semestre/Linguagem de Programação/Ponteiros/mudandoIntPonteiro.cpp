#include <iostream>

using namespace std;

int main ()
{
    // Declaração de variavel e ponteiro
    int ano, *pAno;
    ano = 2002;

    cout << ano << "\n";

    // Aqui estou mudando a variavel 'ano' utilizando um ponteiro 'pAno'
    //apontando para o endereço de memória da variavel 'ano'
    pAno = &ano;
    *pAno = 2022;

    cout << ano;

    return ano;
}