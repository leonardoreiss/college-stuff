#include <iostream>
#include <string>
#include <math.h>

using namespace std;

int* fat(int n, int p[], int k = 0, int d = 2){

    if (n == 1){
        p[k] = 0;

        return p;
    }

    int rest = n % d;
    int result = n / d;

    if(rest == 0){
        p[k] = d;

        fat(result,p,k+1,d);
    }else{
        
        fat(n,p,k,d+1);
    }
}

int main () {
    
    int n = 60;
    int k = round(log(n));
    int p[k];

    fat(n, p);

    for(int i =0; i <= k; i++){
        cout << p[i] << '\n';
    }
}