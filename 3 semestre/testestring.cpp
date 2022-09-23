#include <stdio.h>
#include <stdlib.h>

void contaLetras(char *p)
{
	int cont = 1;
	for(int i = 0;p[i] != '\0';i++)
	{
		for(int a = i-1; a >= 0; --a)
		{
			if(p[i] == p[a])
			{
				break;
			}
			else
			{
				for(int b = i+1;p[b] != '\0';b++)
				{
					if(p[i] == p[b])
					{
						cont++;
					}
				}
			}
		}
		printf("%c = %d\n", p[i], cont);		
	}
}

int main()
{
	char plv[20], *p;
	p = &plv[0];
	
	printf("Escreva a palavra para ser contada\n");
	printf("A palavra deve ter no maximo 20 caracteres!\n");
	scanf("%s", plv);
	
	contaLetras(p);
}
