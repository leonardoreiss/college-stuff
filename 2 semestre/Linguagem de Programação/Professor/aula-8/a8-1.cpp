#include <iostream>

using namespace std;

// recebe v[i:n) tal que n > 0 e 0 <= i < n
// e devolve um indice k em [i:n) tal que
// v[k] é um mínimo de v[i:n)
int ind_min(int *v, int i, int n) {
    int k = i;
    for (int j = i+1; j < n; ++j)
        if (v[j] < v[k]) k = j;
    return k;
}

// recebe um vetor v[0:n), n >= 0, de ints
// e rearranja v[0:n) de tal forma que
// v[0] <= v[1] <= ... <= v[n-1]
void ssort(int *v, int n) { 
    for (int i = 0; i < n-1; ++i) {
        // encontrar a posição k de um menor
        // elemento de v[i:n)
        int k = ind_min(v, i, n);
        int tmp = v[i]; v[i] = v[k]; v[k] = tmp;
    }
}

int main() {
    const int MAX = 100000;
    int v[MAX];
    for (int i = 0; i < MAX; ++i)
        v[i] = rand() % 10000;
    ssort(v, MAX);
    for (int i = 0; i < MAX; ++i) cout << v[i] << ' ';
    cout << '\n';
}