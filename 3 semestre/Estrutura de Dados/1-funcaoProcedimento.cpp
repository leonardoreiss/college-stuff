#include <iostream>
#include <stdio.h>

using namespace std;

void soma(int n1, int n2) //procedimento - Não retorna nada
{
    printf("A soma de: %d + %d eh: %d\n", n1, n2, (n1 + n2));
}

int sooma(int n1, int n2) //função - Retorna um valor
{
    return n1 + n2;
} 

int main()
{
    soma(2,5);
    printf("A soma de %d e %d eh: %d\n", 2, 5, sooma(2,5));
    return 0;
}