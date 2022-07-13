#include <iostream>

using namespace std;

// gera as instruções para mover
// n >= 1 pinos de A para C usando B como auxiliar
// e devolve o comprimento desta sequencia de instrucoes
int hanoi(int n, char A, char B, char C) {
    if (n == 1) {
        cout << A << "->" << C << '\n';
        return 1;
    }
    else {
        int k1 = hanoi(n-1, A, C, B);
        cout << A << "->" << C << '\n';
        int k2 = hanoi(n-1, B, A, C);
        return k1 + k2 + 1;
    }
}

int main() {
    int moves = hanoi(6, 'A', 'B', 'C');
    cout << "movimentos: " << moves << '\n';
}