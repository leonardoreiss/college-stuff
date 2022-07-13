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

int main ()
{
	char v[2];
	const char *msg = "ola, bom dia!!";
	printf(" a string %s tem comprimento %ld",
		   cpy(v, msg), len(msg));
}


