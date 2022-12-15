#include <stdio.h>
#include <string.h>

int tam(char *s)
{
    int n = 0;
    for (int i = 0; s[i]!= '\0'; i++)
    {
        n++;
    }
    return n + 1; //+1 relativo ao '\0' 
}

void grud(char *dest, char *orig)
{
    int i;
    for(i=0; orig[i]!= '\0'; i++)
    {
        dest[i]= orig[i];
    }
    dest[i]= '\0';
    printf("%s", dest);
}

int main()
{
    char aluno[21];
    scanf("%s", aluno); //SCANF não lê nomes compostos
    //gets(aluno); -> não funciona
    scanf(" %20[^\n", aluno); //qualquer caractere diferente (^) 
                             //de enter (‘\n’), e impondo ainda um limite de até 
                            //20 bytes para a transferência.
                           //O espaço em branco antes da % indica que
                          //brancos e caracteres de tabulação sejam desprezados
                         //antes do inicio do texto.




    char a[] = "TAMANHO NAO E DOCUMENTO"; //"TAMANHO NAO E DOCUMENTO\0"
    char b[tam(a)];
    printf("%d\n", tam(a));
    grud(b, a);
    printf("\n%d\n", tam(b));
}


/*
strlen(<str>); //retorna o tamanho da str
strcpy(<str1>,<str2>); //copia str2 em str1
strcat (<str1>,<str2>);// concatena str2 em str1
strcmp(<str1>,<str2>);// compara str1 com str2
                    se (str1=str2) retorna zero
                    se(str1<str2) retorna negativo
                    se (str1>str2) retorna positivo
*/