#include <iostream>
 using namespace std;

int main() {
    int *v = new int[10];
    for (int i = 0; i < 10; ++i) v[i] = i;
    for (int i = 0; i < 10; ++i)
        cout << v[i] << ' ';
    delete [] v;
      
 }