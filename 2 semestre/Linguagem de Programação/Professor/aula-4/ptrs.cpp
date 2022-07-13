#include <iostream>
using namespace std;

// receve um vetor v[0:n), n >= 0 de ints e devolve
// a soma dos elementos de v[0:n)
int sumv1(int v[], int n) {
    int acc = 0;
    for (int i = 0; i < n; ++i) 
        acc += v[i];
    return acc;
}

// recebe begin, end: int * tais que [begin, end)
// é válido e begin <= end e devolve a soma
// dos elementos *begin, *(begin+1), ..., *(end-1)
int sum(int *begin, int *end) {
    int acc = 0;
    while (begin != end) {
        acc += *begin;
        ++begin;
    }
    return acc;
}

// abreviatura: escrever *[begin:end)
// é o mesmo que *begin, *(begin + 1), ..., *(end-1)
// recebe begin <= end e devolve a soma
// dos elementos pares de *[begin:end)
int sum_even(int *begin, int *end) {
    int acc = 0;
    while (begin != end) {
        if (*begin % 2 == 0) acc += *begin;
        ++begin;
    }
    return acc;
}

// Escreva uma função que recebe begin < end
// e devolve um elemento máximo de *[begin:end)
int max(int *begin, int *end) {
    int cand = *begin;
    while (begin != end) {
        if (*begin > cand) cand = *begin;
        ++begin;
    }
    return cand;
}

int main() {
    int v[] = {1, 3, 4, 5, 2, 7};
    int s = sum_even(v, v+6);
    cout << s << '\n';
    cout << max(v, v + 6) << '\n';
}
