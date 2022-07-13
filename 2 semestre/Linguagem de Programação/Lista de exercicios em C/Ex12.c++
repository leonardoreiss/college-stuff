/*
12)	(ADS-IO) Faça um algoritmo que receba como entrada as 
medidas dos dois catetos de um triângulo retângulo e calcule e 
exiba a medida da hipotenusa e a área do triângulo
*/

#include <iostream>
#include <cmath>

using namespace std;

int main(float cat1, float cat2)
{
    cout << "Valor do cateto 1: ";
    cin >> cat1;
    cout << "Valor do cateto 2: ";
    cin >> cat2;

    float hip;
    hip = (cat1 * cat1) + (cat2 * cat2);
    hip = sqrt(hip);

    cout << "A hipotenusa: " << hip;

    return 0;
}