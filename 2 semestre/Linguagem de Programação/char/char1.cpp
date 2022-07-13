#include <iostream>

using namespace std;

int main ()
{
	const char * const s = "abcdef";
	//s[2] = 'x' -> errado 
	s = "xyz";
	cout << s << '\n';
	
	return 0;	
}

