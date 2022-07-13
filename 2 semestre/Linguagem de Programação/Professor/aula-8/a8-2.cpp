#include <iostream>

using namespace std;

// recebe start, finish tal que start < finish
// e devolve k em [start: finish) tal que
// *k é um menor elemento de *[start: finish)
int *ptr_min(int *start, int *finish) {
    int *k = start++;
    for (; start != finish; ++start)
        if (*start < *k) k = start;
    return k;
}

// recebe start e finish tal que start <= finish
// e rearranja *[start:finish)
// *start <= *(start + 1) <= ... <= *(finish - 1)
void ssort(int *start, int *finish) { 
    for ( ; start + 1 < finish; ++start) {
        int *m = ptr_min(start, finish);
        int tmp = *start; *start = *m; *m = tmp;
    }
}

int main() {
    int v[] = {2, 1, 4, 5, 6, 9, 8, 7, 3, 0};
    ssort(v, v+10);
    for (int i = 0; i < 10; ++i) cout << v[i] << ' ';
    cout << '\n';
}