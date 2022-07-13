/*
 8)(ADS MA1/VA1-IO) Faça um programa em VisualG, que solicite
 do usuário o nome e sua idade. Exiba a frase “Olá sr(a) XXXXXXXXXXXXXXXXX,
  você tem XX anos de idade”.
*/

#include <iostream>

using namespace std;

int main()
{
  int idade;
  string nome;

  cout << "Qual e a sua idade ?";
  cin >> idade;
  cout << "Qual e o seu nome ?";
  cin >> nome;

  cout << "A sua idade é: " << idade << " e seu nome é : " << nome;

  return 0;
}