#include <iostream>

using namespace std;

// recebe v[b:e), com e > b e rearranja
// v[b:e) de tal forma que
// v[b:i) <= v[i] < v(i:e) para algum i em [b:e)
// e devolve i
int partition(int *v, int b, int e) {
    const int pivo = v[b];
    int i = b;
    for (int j = b+1; j < e; ++j)
        if (v[j] <= pivo) {
            ++i;
            int tmp = v[i];
            v[i] = v[j];
            v[j] = tmp;
        }
    v[b] = v[i]; v[i] = pivo;
    return i;
}

// recebe v[b:e) com e >= b e rearraja v[b:e)
// de tal forma que v[b] <= v[b+1] <= ... <= v[e-1]
void qsort(int *v, int b, int e) {
    if (e - b <= 1) return;
    int i = partition(v, b, e);
    qsort(v, b, i);
    qsort(v, i+1, e);
}

void qsort_tc_1(int *v, int b, int e) {
    while (e - b >= 2) {
        int i = partition(v, b, e);
        qsort_tc_1(v, b, i);
        b = i+1;
    }
}

void qsort_tc_2(int *v, int b, int e) {
    while (e - b >= 2) {
        int i = partition(v, b, e);
        qsort_tc_2(v, i+1, e);
        e = i;
    }
}

void qsort_tc(int *v, int b, int e) {
    while (e - b >= 2) {
        int i = partition(v, b, e);
        if (i - b <= e - i - 1) {
            qsort_tc(v, b, i);
            b = i + 1;
        }
        else {
            qsort_tc(v, i+1, e);
            e = i;
        }
    }
}



int main() {
    const int MAX = 100;
    int v[MAX];
    for (int i = 0; i < MAX; ++i)
        v[i] = rand() % 100;
    qsort_tc_2(v, 0, MAX);
    for (int i = 0; i < MAX; ++i) cout << v[i] << ' ';
    cout << '\n';
}