#include <iostream>

using namespace std;

// escrever v[0:n) é uma forma de dizer que é válido acessar v[0], v[1], ..., v[n-1]
// escreva uma função que recebe um vetor v[0:n) de int's , n >= 0
// e devolve a soma dos elementos positivos de v[0:n)
int sum_pos(int v[], int n) {
    int acc = 0;
    for (int i = 0; i < n; ++i)
        if (v[i] > 0) acc += v[i];
    return acc;
}

// escreva uma função que recebe um vetor v[0:n), n >= 1
// e rearranja v[0:n) de tal forma que um maior elemento
// de v[0:n) ocupe a posição v[n-1]
// por exemplo, se v = {1, 4, 5, 2, 0}, e n = 5 antes da chamada,
// então uma possível saída é {1, 4, 2, 0, 5}
void move_max(int v[], int n) {
    // encontre um índice, digamos m, onde vive um maior elemento de v[0:n)
    int m = 0;
    for (int i = 1; i < n; ++i) {
        if (v[i] > v[m]) m = i;
    }
    // agora, v[m] é um maximo de v[0:n)
    // troque os elementos das posições n-1 e m
    // v = {1, 4, 5, 2, 0}  m = 2 -> v = {1, 4, 0, 2, 5}
    int tmp = v[m]; v[m] = v[n-1]; v[n-1] = tmp;

}

void exchange(int *x, int *y) {
    int tmp = *x;
    *x = *y;
    *y = tmp;
}

void move_maxv2(int v[], int n) {
    // encontre um índice, digamos m, onde vive um maior elemento de v[0:n)
    int m = 0;
    for (int i = 1; i < n; ++i) {
        if (v[i] > v[m]) m = i;
    }
    // agora, v[m] é um maximo de v[0:n)
    // troque os elementos das posições n-1 e m
    // v = {1, 4, 5, 2, 0}  m = 2 -> v = {1, 4, 0, 2, 5}
    exchange(v + m, v + n - 1);
}

// recebe um vetor v[0:n) de ints, n >= 0, e
// rearranja v[0:n) de tal forma que, após a chamada,
// v[0:n) está ordenado em ordem não-decrescente
void selection_sort(int v[], int n) {
    for (; n > 0; --n)
        move_maxv2(v, n);
}

// recebe um vetor v[0:n) de ints, n >= 0, e dois ints x e y,
// e troca toda ocorrencia de x em v[0:n) por y.
// por exemplo, se v = {2, 1, 2, 5, 3, 2}, n = 6, x = 2, y = 0,
// então, após a chamada, v = {0, 1, 0, 5, 3, 0}
void subs(int v[], int n, int x, int y) {
    for (int i = 0; i < n; ++i)
        if (v[i] == x) v[i] = y;
}

// recebe um vetor v[0:n), n >= 0 e devolve true se,
// e só se, v[0:n) é um palíndromo.
// por exemplo, {3, 4, 4, 3} é palíndromo
//              {3, 4, 4} não é palíndromo
bool palindromo(int v[], int n) {
    int i = 0, k = n-1;
    while (i < k && v[i] == v[k]) {
        ++i; --k;
    } 
    return i >= k;
}

int main() {
    int a[] = {1, 4, -2, 8, 4, -3};
    // cout << sum_pos(a, 6) << '\n';
    //selection_sort(a, 6);
    
    int b[] = {1, 2, 1, 2, 1};
    cout << palindromo(b, 5) << '\n';
    cout << palindromo(b, 4) << '\n';
}