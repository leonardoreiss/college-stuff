#include <iostream>

using namespace std;

//recebe n >= 0 e devolve a datorial de n
int fat(int n)
{
	return n == 0
		   ? 1
		   : n * fat(n-1);
		
}

int soma(int n)
{
	return n == 0
		   ? 0
		   : n + soma(n-1);
		
}

int fib(int n)
{
	return n == 0 || n == 1     //n || !n
		   ? n
		   : fib(n-1) + fib(n-2); 
}

//recebe n >= 0 e escreva os numeros 1, 2, ..., n
void escreve(int n)
{
	if(n == 0) return;
	escreve(n-1);
	// suponha que a função faz o que promete,
	// ou seja, escreve os numeros 1, 2, ..., n-1
	//logo, falta só escrever o n
	cout << n << ' ';
}

//recebe n >= 0 e escreve n, n-1, ...., 1
void esc_inv(int n)
{
	if (n == 0) return;
	cout << n << ' ';
	esc_inv(n-1);

}

// recebe um vetor v[0:n) de ints, com n >=0,
//e devolve a soma dos elementos de v[0:n)
int soma(int v[] , int n)
{
	return n == 0 
		   ? 0
		   : soma(v, n-1) + v[n-1];
		   // A chamada recursiva vai produzir
		   // a soma dos elementos de v[0:n-1), ou seja,
		   // v[0] + v[1] + ... + v[n-2]
		   // Logo, só falta somar o v[n-1]
}

//recebe v[0:n), com o n > 0, e devolve um elemento
//maximo de v[0:n)
int max(int v[], int n)
{
	if (n == 1) return v[0];
	int x = max(v, n-1);
	return x >= v[n-1] ? x : v[n-1];	
}

int main()
{

	int x[] = {2, 1, 4, 5, 6, 10};
	cout << soma(x, 6) << '\n';
	cout << max(x, 6) << '\n';
	//esc_inv(10);
	//escreva(10);
	/*
	cout << fat(6) << '\n';
	cout << soma(100) << '\n';
	cout << fib(10) << '\n';
	*/
}