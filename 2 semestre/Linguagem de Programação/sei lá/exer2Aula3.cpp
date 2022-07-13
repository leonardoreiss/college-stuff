#include <iostream>

using namespace std;

// escreva uma função que recebe um vetor v[0:n) de int's , n >= 0
//e devolve a soma dos elementos positivos  de v[0:n)

int sum_pos(int v[], int n) {
    int acc = 0;
    for(int i = 0; i < n; ++i)
        if (v[i] > 0) acc += v[i];
    return acc;
}

int main() {
    int a[] = {1, 4, -2, 4, -3, 8};
    cout << sum_pos(a, 6) << "\n";
}