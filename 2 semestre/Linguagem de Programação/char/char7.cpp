#include <iostream>
#include <cstring>
#include <cstdio>

using namespace std;

//recebe uma string S e devolve o seu comprimento
size_t len(const char *s)
{ 
	const char *t = s;
	while(*t) ++t;
	
	return t - s - 1;
}

char *cpy(char *destino, const char *fonte)
{
	char *inicio = destino;
	while (*fonte)
	{
		*destino = *fonte;
		++fonte;
		++destino;
	}
	*destino = '\0';
	return inicio;
}

// devolve true se S é um prefixo de t 
boll is _pred(const char *s, const char *t)
{
	while (*s && *t && *s == *t)
	{
		++s; ++t;
	}
	return *s == '\0';
}

int main ()
{
	const char *s = "aab";
	const char *t = "aabababa";
	cout << is_pref(s, t) << '\n';
}



