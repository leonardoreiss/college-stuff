/*
10)	(ADS MA1-IO) Crie um programa para realizar o cálculo da área de uma circunferência, sendo a formula A = PI
*R2. Solicite o valor do raio para o usuário, efetue o cálculo e exiba o valor. Lembre-se PI=3.1415
*/

#include <iostream>

using namespace std;

int main ()
{
    float pi = 3.1415;
    float A, R;

    cout << "Valor do raio: ";
    cin >> R;

    A = pi * (R * R);

    cout << "A area da circunferencia e: " << A; 
}