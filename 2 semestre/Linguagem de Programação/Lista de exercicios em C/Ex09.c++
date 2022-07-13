/*
9)	(ADS MA1-IO) Ler uma temperatura em graus Celsius e apresentá-la convertida em graus Fahrenheit. 
A formula de conversão é: F := (9 * C + 160)/5, sendo C a temperatura em Celsius e F em Fahrenheit
*/

#include <iostream>

using namespace std;

int main()
{
    double C, F;

    cout << "Temperatura a ser calculada: ";
    cin >> C;

    F = (9 * C + 160)/5;

    cout << "A temperatura em Fahrenheit: " << F;

    return 0;
}