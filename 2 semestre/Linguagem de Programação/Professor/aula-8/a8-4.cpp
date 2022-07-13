#include <iostream>

using namespace std;

// n >=1

// recebe v, i tais que i > 0
// e v[0] <= v[1] <= ... <= v[i-1]
// e rearranja v[0:i] de tal forma
// que v[0] <= v[1] <= ... <= v[i-1] <= v[i]
void insert(int *v, int i) {
    while (i > 0 && v[i] < v[i-1]) {
        int tmp = v[i]; v[i] = v[i-1]; v[i-1] = tmp;
        --i;
    }
}

// recebe v[0:n), n >= 0 e
// rearranja v[0:n) de tal forma que
// v[0] <= v[1] <= ... <= v[n-1]
void isort(int *v, int n) {
    for (int i = 1; i < n; ++i) 
        insert(v, i);
}

int main() {
    const int MAX = 200000;
    int v[MAX];
    for (int i = 0; i < MAX; ++i)
        v[i] = rand() % 10000;
    isort(v, MAX);
    for (int i = 0; i < MAX; ++i) cout << v[i] << ' ';
    cout << '\n';
}