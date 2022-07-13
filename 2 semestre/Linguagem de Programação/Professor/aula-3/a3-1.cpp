#include <iostream>
using namespace std;

// recebe um int n >= 0 e um int d tal que 0 <= d <= 9
// e devolve o numero de ocorrencias de d em n.
// por exemplo, se n = 341121 e d = 1, então a sua
// função deve devolver 3.

int cnt_digits(int n, int d) {
    if (n == 0 && d == 0) return 1;
    int c = 0; // no final c é o numero de ocorrencias de d em n
    while (n != 0) {
        int r = n % 10; // ultimo digito de n (456 % 10 -> 6)
        if (r == d) ++c;
        n = n / 10; // "n sem o ultimo digito" (456 / 10 -> 45)
    }
    return c;
}

int last_digit(int n) { return n % 10; }
int erase_last_digit(int n) { return n / 10; }

int cnt_digitsv2(int n, int d) {
    if (n == 0 && d == 0) return 1;
    int c = 0; // no final c é o numero de ocorrencias de d em n
    while (n != 0) {
        int r = last_digit(n); // ultimo digito de n (456 % 10 -> 6)
        if (r == d) ++c;
        n = erase_last_digit(n); // "n sem o ultimo digito" (456 / 10 -> 45)
    }
    return c;
}


int main() {
    int n;
    cout << cnt_digits(10121, 0) << '\n';
}