#include <iostream>
#include <cstring>

using namespace std;

//recebe uma string S e devolve o seu comprimento
size_t len(const char *s)
{ 
	const char *t = s;
	while(*t) ++t;
	
	return t - s - 1;
}


int main ()
{
	char t[100] = "1234567";
	cout << len(t) << '\n';
	cout << strlen(t) << '\n';
	cout << len("amanha") << '\n';
	
}


