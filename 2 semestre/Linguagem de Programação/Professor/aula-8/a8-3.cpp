#include <iostream>

using namespace std;

// n >=1
int ind_max(int *v, int n) {
    if (n == 1) return 0;
    int k = ind_max(v, n-1);
    return v[k] >= v[n-1] ? k : n-1;
}

void ssort(int *v, int n) {
    if (n <= 1) return;
    int k = ind_max(v, n);
    int tmp = v[k]; v[k] = v[n-1]; v[n-1] = tmp;
    ssort(v, n-1);
}

int main() {
    int v[] = {2, 1, 4, 5, 6, 9, 8, 7, 3, 0};
    ssort(v, 10);
    for (int i = 0; i < 10; ++i) cout << v[i] << ' ';
    cout << '\n';
}