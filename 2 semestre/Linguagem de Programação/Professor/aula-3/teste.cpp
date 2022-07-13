#include <iostream>
using namespace std;

int cnt_digits(int n, int d){
    int c = 0;
    while(n!=0){
        int r=n % 10;
        if (r==d) ++c;
        n/=10;
    }
    return c;

}

int main() {
    cout << cnt_digits(10121, 0) << '\n';
}