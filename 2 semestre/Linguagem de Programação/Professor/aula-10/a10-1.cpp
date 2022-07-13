#include <iostream>

using namespace std;

// NUNCA FAÇA ISSO!!
int *foo() {
    int a = 2;
    int *p = &a;
    return p;
}

int main() {
    int *x = foo();
    cout << x;
}