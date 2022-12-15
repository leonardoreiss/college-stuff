#include <stdio.h>

/*
Quando um procedimento ou uma função
recebe o endereço de uma variável
por meio de um ponteiro, diz-se que a
passagem de parâmetro é feita por
referência.
Sempre que um vetor (de qualquer tipo)
for passado por parâmetro a uma
função ou procedimento, essa
passagem será sempre por referência!!
*/
void troca(int *a, int*b)
{
    int aux = *a;
    *a = *b;
    *b = aux;
}

void calcula(int a, int b, int *s, int *p)
{
    *s = a + b;
    *p = a * b;
}

int main()
{
    int x = 3;
    int y = 5;
    int soma, prod;

    /*troca(&x, &y);
    printf("Troca: x= %d y= %d\n", x, y);

    calcula(x, y, &soma, &prod);
    printf("soma=%d produto=%d\n", soma, prod);*/



    //Ponteiros para vetores
    int vet[4] = {10, 12, 30, 45};
    int *pv;
    pv=vet; // ou pv=&vet[0];
    for(int i=0; i < 4; i++)
        printf("%d ", vet[i]);// ou printf("%d", pv[i]);
    printf("\n\n");
    //percurso usando o ponteiro para o vetor (pv)
    for(int i=0; i < 4; i++)
    printf("%d ", *pv++);// printf("%d ",(*pv)++);?



    //Ponteiros para Strings
    char frase[] = "ABRACADABRA";
    char *p;
    int i, n=0;
    //percurso usando o ponteiro para a string (p)
    for(p=frase; *p !='\0'; p++)
        if (*p=='A' || *p=='a') 
            n++;
    printf("\nLetras A = %d\n", n);
    //percurso usando o vetor frase
    for(i=0, n = 0; frase[i]!='\0'; i++)
        if (frase[i]!='A' && frase[i]!='E' && frase[i]!='I' && frase[i]!='O' && frase[i]!='U')
        {
            if(frase[i]!='a' && frase[i]!='e' && frase[i]!='i' && frase[i]!='o' && frase[i]!='u') 
                n++;
        }
            
        printf("Consoantes = %d\n", n);




    /*
    int x = 33;
    int *px = &x;

    printf("%d\n", *px);

    int m, *pm;
    pm=&m; //pm recebe o endereço de m
    *pm=3; //o contéudo endereçado por pm receberá o valor 3
    printf("%d\n", m);

    float x1, y, *z;
    x1 = 2.0;
    *z = 5.0;
    y = x1 + (*z);
    printf("%.0f", y);
    */
    return 0;
}