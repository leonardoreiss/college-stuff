#include <iostream>

using namespace std;

//recebe uma string S e devolve o seu comprimento
size_t len(const char *s)
{ 
//size_t --> um inteiro n�o negativo, qualquer vetor que for alocado, o vetor tem que caber nele, (vetor n�o pode por negativo)
// se subtrair dois endere�os de memoria, com certeza caber� em um size_t.
	size_t n = 0;
	while(*s != '\0') 
	{
		++s; //acrescenta um no contador do endere�o de memoria
		++n; // acrescenta um no contador de char
	}
	
	return n;
}

int main ()
{

	char t[] = "123n 4567";
	char v[] = {'f', 'a', 't', '\0', 'e', 'c', '\0'}; 
	
	cout << v + 1 << '\n';
	cout << v + 3 << '\n';
}

