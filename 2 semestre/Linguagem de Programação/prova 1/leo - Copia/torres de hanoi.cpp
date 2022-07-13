// Torres de Hanoi

/*
* ---------------------3 torres--------------------------
* Um 'pino' pequeno não pode estar em baixo do pino maior
* 
* (Mover os n pinos de A para C usando B como auxiliar)
*
* Se n = 1 ===> então mova de A para C
* Se n > 1 ===> então tranfira recursivamente os n-1 primeiros pinos de A para B, usando C como auxiliar 
*
*      |     |       |
*      |    ---      |
*      |     |       |
*     ---  -----     |
*     _|_   _|_     _|_
* 
*  **Transfira o pino de A para C
*      |      |       |
*      |      -       |
*      |     ---      |
*      |   ------ ---------
*     _|_    _|_     _|_
*
*  **Transferir os n-1 pinos de B para C usando A como Auxiliar
*
*      |     |        |
*      |     |       ---
*      |     |     -------
*      |     |    --------- 
*     _|_   _|_      _|_
*/

#include <iostream>

using namespace std;

//Gera as instruções para mover 
// n >= 1 pinos de A para C usando B como auxiliar
int hanoi(int n, char A, char B, char C)
{
    if (n == 1)
    {
        cout << A << "->" << C << "\n";
        return 1;
    }else
    {
        int k1 = hanoi(n-1, A, C, B);
        cout << A << "->" << C << "\n";
        int k2 = hanoi(n-1, B, A, C);
        return k1 + k2 + 1;
    }
}

int main()
{ 
    int moves = hanoi(4, 'A', 'B', 'C');
    cout << "movimentos: " << moves << '\n';
}