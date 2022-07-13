#include <iostream>
#include <cstdlib>
#include <stack>

using namespace std;

int main()
{

    stack <string> cartas;

    if(cartas.empty()) cout << "Pilha vazia \n \n";

    cartas.push("Rei de Copas"); //! --> base da pilha
    cartas.push("Rei de Espadas");
    cartas.push("Rei de Ouros");
    cartas.push("Rei de Paus"); //! --> Topo da pilha!!!

    cout << "Tamanho da pilha: " << cartas.size() << "\n"; 

    cout << "Carta do Topo: " << cartas.top() << "\n";

    cartas.pop(); //! Retira um elemento que está na base da pilha

    cout << "Nova carta do topo: " << cartas.top() << "\n";

    return 0; 
}