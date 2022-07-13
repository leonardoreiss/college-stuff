#include <iostream>

using namespace std;

int max_func(int n, int v[])
{  
    if (n == 1) return v[0];
    int max_ = max_func(n-1, v);

    return max_ >= v[n-1] ? max_: v[n-1];
}


int min_func(int n, int v[])
{    
    if (n == 1) return v[0];
    int min_ = min_func(n-1, v);

    return min_ <= v[n-1] ? min_: v[n-1];
}

int main()
{
    int n;
    cin >> n;

    int *h = NULL; // vetor que será alocado o espaço
    h = new int[n];
    for(int i = 0; i < n; i++)
    {
        cin >> h[i]; 
    }

    int mx = max_func(n,h);
    int mn = min_func(n,h);
    cout << mx - mn;
    delete [] h;  // Libera o espaço alocado para o vetor
}