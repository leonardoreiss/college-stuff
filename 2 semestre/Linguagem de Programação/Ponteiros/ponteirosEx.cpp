#include <iostream>

using namespace std;

int main ()
{
    // Declaração de variavel e ponteiro
    int ano, *pAno;

    // Inicialização
    ano = 2020;
    pAno =  &ano;

    cout << *pAno << "\n";
    // O valor de 'ano': 2020

    cout << *&ano << "\n";
    // 2020 (também)

    cout << &ano << "\n";
    // Endereço de 'ano', algo como 0x7fff5694dc58

    cout << pAno << "\n";
    // O endereço de 'ano' também

    cout << &pAno << "\n";
    // Endereço de 'pAno' <> 'ano'

    return 0;
}