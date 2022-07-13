#include <iostream>

using namespace std;

// n >=1

// recebe v, i tais que i >= 0
// e v[0] <= v[1] <= ... <= v[i-1]
// e rearranja v[0:i] de tal forma
// que v[0] <= v[1] <= ... <= v[i-1] <= v[i]
void insert(int *v, int i) {
    if (i == 0) return;
    if (v[i] >= v[i-1]) return;
    int tmp = v[i]; v[i] = v[i-1]; v[i-1] = tmp;
    insert(v, i-1);
}

// recebe v[0:n), n >= 0 e
// rearranja v[0:n) de tal forma que
// v[0] <= v[1] <= ... <= v[n-1]
void isort(int *v, int n) {
    if (n <= 1) return;
    isort(v, n-1);
    insert(v, n-1);
}

int main() {
    int v[] = {2, 1, 4, 5, 6, 9, 8, 7, 3, 0};
    isort(v, 10);
    for (int i = 0; i < 10; ++i) cout << v[i] << ' ';
    cout << '\n';
}