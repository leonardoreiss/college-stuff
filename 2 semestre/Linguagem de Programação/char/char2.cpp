#include <iostream>

using namespace std;

int main ()
{
	//const char * const s = "abcdef";
	char t[] = "123n 4567";
	char v[] = {'f', 'a', 't', '\0', 'e', 'c', '\0'}; // -> um char é um array de strings
	// pode colocar mais de um \0 em um mesmo vetor, mas depois vai ter que separar, se colocar pra imprimir, vai parar no primeiro \0.
	
	//t[0] = '0';
	
	cout << v + 1 << '\n';
	cout << v + 3 << '\n';
}

