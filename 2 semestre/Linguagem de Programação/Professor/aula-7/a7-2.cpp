#include <iostream>

using namespace std;

// recebe um vetor v[b:e) de ints, com b <= e
// e devolve a soma dos elementos de v[b:e)
// e-b é o numero de elementos do intervalo [b:e)
int sum(int v[], int b, int e) {
    if (e - b == 0) return 0;
    if (e - b == 1) return v[b];
    int m = (b + e)/2;
    return sum(v, b, m) + sum(v, m, e);
}

// recebe um vetor v[b:e) de ints, com b <= e, e um int key
// e devolve true se, e só se, key é um dos elementos de
// v[b:e)

bool contains(int v[], int b, int e, int key) {
    if (e - b == 0) return false;
    if (e - b == 1) return v[b] == key;
    int m = (b + e)/2;
    return contains(v, b, m, key) || contains(v, m, e, key);
}

// recebe um vetor v[b:e) de ints em ordem não-decrescente
// e um int key, e devolve true se, e só se, key é um
// dos elementos de v[b:e)
bool bsearch(int v[], int b, int e, int key) {
    if (b == e) return false;
    int m = (b + e)/2;
    if (v[m] == key) return true;
    return key < v[m]
           ? bsearch(v, b, m, key)
           : bsearch(v, m+1, e, key);
}

int main() {
    /*int v[] = {1, 2, 3, 5, 2, 8, 9};
    cout << contains(v, 0, 7, 5) << '\n';*/
    int w[] = {1, 4, 5, 7, 8, 12, 16, 19, 20};
    cout << contains(w, 0, 9, 16) << '\n';
    cout << contains(w, 0, 9, 0) << '\n';
}