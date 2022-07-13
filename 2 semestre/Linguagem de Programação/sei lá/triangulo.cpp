#include <iostream>

using namespace std; 

int main (int b, int a){
    cout << "Qual e a base do triangulo? ";
    cin >> b;
    cout << "Qual e a altura do triangulo? ";
    cin >> a;

    int area;
    area = (b * a) / 2;

    cout << "A altura do triangulo e de: " << area;

    return 0;
}