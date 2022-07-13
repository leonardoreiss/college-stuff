#include <iostream>
#include <cstdlib>
using namespace std;

void sift_down(int *v, int n, int i) {
    while (2*i + 1 < n) {
        int k = 2*i + 1;
        if (k+1 < n && v[k+1] > v[k]) ++k;
        if (v[i] >= v[k]) return ;
        int tmp = v[i]; v[i] = v[k]; v[k] = tmp;
        i = k;
    }
}

void build_heap(int *v, int n) {
    for (int i = (n-1)/2; i >= 0; --i) 
        sift_down(v, n, i);
}

void hsort(int *v, int n) {
    build_heap(v, n);
    while (n > 1) {
        --n;
        int tmp = v[n]; v[n] = v[0]; v[0] = tmp;
        sift_down(v, n, 0);
    }
}

const int MAX = 5000000;
int v[MAX];
    
int main() {
    for (int i = 0; i < MAX; ++i)
        v[i] = rand() % 10000;
    hsort(v, MAX);
    //for (int i = 0; i < MAX; ++i) cout << v[i] << ' ';
    //cout << '\n';
}