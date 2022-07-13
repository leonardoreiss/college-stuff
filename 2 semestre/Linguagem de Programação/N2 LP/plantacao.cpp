#include <iostream>

using namespace std;

int max_func(int n, int v[])
{  
    if (n == 1) return v[0];
    int max_ = max_func(n-1, v);

    if (max_ >= v[n-1])
    {
        return max_;
    }
    else{
        return v[n-1];
    }
}


int min_func(int n, int v[])
{    
    if (n == 1) return v[0];
    int min_ = min_func(n-1, v);
    
        if (min_ <= v[n-1])
    {
        return min_;
    }
    else{
        return v[n-1];
    }
    //return min_ <= v[n-1] ? min_: v[n-1];
}

int main()
{
    int n = 0;
    cin >> n;
    int x[n];
    
    for (int i =0; i < n; ++i)
    {
        cin >> x[i];
    }
    
    int mx = max_func(n,x);
    int mn = min_func(n,x);
    cout << mx - mn;
}
