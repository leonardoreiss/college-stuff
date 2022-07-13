#include <iostream>

using namespace std;

void troca(int* p, int* r) {
    int tmp = *p;
    *p = *r;
    *r = tmp;
}

// recebe um vetor v[0:n), n >= 1 de ints e devolve um elemento máximo de v[0:n)
int maxv(int v[], int n) {
    int cand = v[0]; 
    for (int i = 1; i < n; ++i) {
        if (v[i] > cand) { 
            cand = v[i];
        }
    }
    return cand;
}

int soma(int v[], int n) {
    int s = 0;
    for (int i = 0; i < n; ++i) 
        s += v[i];
    return s;
}

// Receve um vetor v[0:n), n >= 0 e um int key
// e devolve true se, e só se, existe i em [0:n) tal que v[i] == key
bool contains(int v[], int n, int key) {
    for (int i = 0; i < n; ++i)
        if (v[i] == key) return true;
    return false;
}

int main() {
    int w[] = { 5, 4, 1, 2, 5, 7, 8};
    cout << contains(w, 7, 2) << '\n';
    cout << contains(w, 7, 9) << '\n'; 
    return 0;
} 