#include <stdio.h>
#include <stdlib.h>
#include <time.h>

//struct para dados basicos --> salario 
struct dados_basicos{
	double salario_bruto;
	double AliqINSS;
	double Val_INSS  ;
	double Base_I_R;
	double AliqIR;
	double Val_IR;
	double Liquido;
};

void Exibe_dados_salario(dados_basicos *Dp, int pTam, FILE *CALCULOS);
int Sal_ja_existe(int pSal, dados_basicos *pV, int pTam);

int main(void){
	//variaveis globais separadas por "//"
	int TamA=0;
	int TamB=0;
	int i;
	int tamanho_total_vendas;
	int posicao;

	dados_basicos ler;
	dados_basicos *salario_entrando;
	//
	dados_basicos *Vendas_totais_trasferencia;
	dados_basicos *arquivo_dados_basicos; //ponteiro para geração dos novos arquivos
	//variaveis e ponteiros de dados_da_venda

	salario_entrando = NULL;
	//
	FILE *arq_para_vendas;
	FILE *CALCULOS;
	
	
	//nomes dos integrantes
	printf("Raphael dos santos freitas\n");
	printf("isaque gabriel\n");
	
	//abrindo arquivo Produtos.txt
	arq_para_vendas = fopen("salario.txt", "r");
	if (arq_para_vendas == NULL)
	{
		printf ("\nErro 01 nao foi possivel abrir arquivo PRODUTOS\n");
	}
	//separando o  arquivo produto em sua respectivas partes
	while (fscanf(arq_para_vendas, "%lf", &ler.salario_bruto) != EOF) {
		TamA++;
		salario_entrando = (dados_basicos *)realloc(salario_entrando, sizeof(dados_basicos) * TamA);
		salario_entrando[TamA-1] = ler;
		
	}
	//fechando arquivo
	fclose(arq_para_vendas);
	
	//Exibe_dados_salario(salario_entrando, TamA, arq_para_vendas);
	
	tamanho_total_vendas = 0; 
	Vendas_totais_trasferencia = NULL;
	for (i=0; i<TamA; i++){
		
		posicao = Sal_ja_existe(salario_entrando[i].salario_bruto, Vendas_totais_trasferencia, tamanho_total_vendas);
		
		if (posicao>=0){
			if(Vendas_totais_trasferencia[posicao].salario_bruto < 1751.81){
				Vendas_totais_trasferencia[posicao].AliqINSS = 8.0;
				Vendas_totais_trasferencia[posicao].Val_INSS = Vendas_totais_trasferencia[posicao].salario_bruto * 0.08;
				Vendas_totais_trasferencia[posicao].Base_I_R = Vendas_totais_trasferencia[posicao].salario_bruto - Vendas_totais_trasferencia[posicao].Val_INSS;
			}
			if(Vendas_totais_trasferencia[posicao].salario_bruto > 1751.81 && Vendas_totais_trasferencia[posicao].salario_bruto < 2919.71){
				Vendas_totais_trasferencia[posicao].AliqINSS = 9.0;
				Vendas_totais_trasferencia[posicao].Val_INSS = Vendas_totais_trasferencia[posicao].salario_bruto * 0.09;
				Vendas_totais_trasferencia[posicao].Base_I_R = Vendas_totais_trasferencia[posicao].salario_bruto - Vendas_totais_trasferencia[posicao].Val_INSS;
			}
			if(Vendas_totais_trasferencia[posicao].salario_bruto > 2919.71 && Vendas_totais_trasferencia[posicao].salario_bruto < 5839.45){
				Vendas_totais_trasferencia[posicao].AliqINSS = 11.0;
				Vendas_totais_trasferencia[posicao].Val_INSS = Vendas_totais_trasferencia[posicao].salario_bruto * 0.11;
				Vendas_totais_trasferencia[posicao].Base_I_R = Vendas_totais_trasferencia[posicao].salario_bruto - Vendas_totais_trasferencia[posicao].Val_INSS;
			}
			if(Vendas_totais_trasferencia[posicao].salario_bruto > 5839.45){
				Vendas_totais_trasferencia[posicao].AliqINSS = 0.0;
				Vendas_totais_trasferencia[posicao].Val_INSS = 642.34;
				Vendas_totais_trasferencia[posicao].Base_I_R = Vendas_totais_trasferencia[posicao].salario_bruto - Vendas_totais_trasferencia[posicao].Val_INSS;
			}
			//
			if(Vendas_totais_trasferencia[posicao].Base_I_R < 1903.98){
				Vendas_totais_trasferencia[posicao].AliqIR = 0.0;
				Vendas_totais_trasferencia[posicao].Val_IR = Vendas_totais_trasferencia[posicao].Base_I_R * Vendas_totais_trasferencia[posicao].AliqIR - 0;
				if(Vendas_totais_trasferencia[posicao].Val_IR <= 10){
					Vendas_totais_trasferencia[posicao].Val_IR = 0.0;
				}
			}
			if(Vendas_totais_trasferencia[posicao].Base_I_R > 1903.98 && Vendas_totais_trasferencia[posicao].Base_I_R < 2826.65){
				Vendas_totais_trasferencia[posicao].AliqIR = 7.5;
				Vendas_totais_trasferencia[posicao].Val_IR = Vendas_totais_trasferencia[posicao].Base_I_R * Vendas_totais_trasferencia[posicao].AliqIR - 142.80;
				if(Vendas_totais_trasferencia[posicao].Val_IR <= 10){
					Vendas_totais_trasferencia[posicao].Val_IR = 0.0;
				}
			}
			if(Vendas_totais_trasferencia[posicao].Base_I_R > 2826.65 && Vendas_totais_trasferencia[posicao].Base_I_R < 3751.05){
				Vendas_totais_trasferencia[posicao].AliqIR = 15.0;
				Vendas_totais_trasferencia[posicao].Val_IR = Vendas_totais_trasferencia[posicao].Base_I_R * Vendas_totais_trasferencia[posicao].AliqIR - 1354.80;
				if(Vendas_totais_trasferencia[posicao].Val_IR <= 10){
					Vendas_totais_trasferencia[posicao].Val_IR = 0.0;
				}
			}
			if(Vendas_totais_trasferencia[posicao].Base_I_R > 3751.05 && Vendas_totais_trasferencia[posicao].Base_I_R < 4664.68){
				Vendas_totais_trasferencia[posicao].AliqIR = 22.5;
				Vendas_totais_trasferencia[posicao].Val_IR = Vendas_totais_trasferencia[posicao].Base_I_R * Vendas_totais_trasferencia[posicao].AliqIR - 636.13;
				if(Vendas_totais_trasferencia[posicao].Val_IR <= 10){
					Vendas_totais_trasferencia[posicao].Val_IR = 0.0;
				}
			}
			if(Vendas_totais_trasferencia[posicao].Base_I_R > 4664.68){
				Vendas_totais_trasferencia[posicao].AliqIR = 27.5;
				Vendas_totais_trasferencia[posicao].Val_IR = Vendas_totais_trasferencia[posicao].Base_I_R * Vendas_totais_trasferencia[posicao].AliqIR - 869,36;
				if(Vendas_totais_trasferencia[posicao].Val_IR <= 10){
					Vendas_totais_trasferencia[posicao].Val_IR = 0.0;
				}
			}
			//
			Vendas_totais_trasferencia[posicao].Liquido = Vendas_totais_trasferencia[posicao].salario_bruto - Vendas_totais_trasferencia[posicao].Val_INSS - Vendas_totais_trasferencia[posicao].Val_IR;
		
		}
		else {
			
			tamanho_total_vendas++;
			Vendas_totais_trasferencia = (dados_basicos *)realloc(Vendas_totais_trasferencia, sizeof(dados_basicos) * tamanho_total_vendas);
			
			Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto = salario_entrando[i].salario_bruto;
			
			if(Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto < 1751.81){
				Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqINSS = 0.08;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_INSS = Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto * 0.08;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R = Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto - Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_INSS;
			}
			if(Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto > 1751.81 && Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto < 2919.71){
				Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqINSS = 0.09;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_INSS = Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto * 0.09;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R = Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto - Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_INSS;
			}
			if(Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto > 2919.71 && Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto < 5839.45){
				Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqINSS = 0.11;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_INSS = Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto * 0.11;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R = Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto - Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_INSS;
			}
			if(Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto > 5839.45){
				Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqINSS = 0.0;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_INSS = 642.34;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R = Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto - Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_INSS;
			}
			//
			
			if(Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R < 1903.98){
				Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqIR = 0.0;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR = Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R * Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqIR - 0;
				if(Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR <= 10){
					Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR = 0;
				}
			}
			if(Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R > 1903.98 && Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R < 2826.65){
				Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqIR = 0.75;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR = Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R * Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqIR - 142.80;
				if(Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR <= 10){
					Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR = 0;
				}
			}
			if(Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R > 2826.65 && Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R < 3751.05){
				Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqIR = 0.15;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR = Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R * Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqIR - 1354.80;
				if(Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR <= 10){
					Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR = 0;
				}
			}
			if(Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R > 3751.05 && Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R < 4664.68){
				Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqIR = 0.225;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR = Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R * Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqIR - 636.13;
				if(Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR <= 10){
					Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR = 0;
				}
			}
			if(Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R > 4664.68){
				Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqIR = 0.275;
				Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR = Vendas_totais_trasferencia[tamanho_total_vendas-1].Base_I_R * Vendas_totais_trasferencia[tamanho_total_vendas-1].AliqIR - 869,36;
				if(Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR <= 10){
					Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR = 0;
				}
			}
			//
			
			Vendas_totais_trasferencia[tamanho_total_vendas-1].Liquido = Vendas_totais_trasferencia[tamanho_total_vendas-1].salario_bruto - Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_INSS - Vendas_totais_trasferencia[tamanho_total_vendas-1].Val_IR; 
		}
	}
	
	CALCULOS = fopen("CALCULOS.TXT", "w");
	Exibe_dados_salario(Vendas_totais_trasferencia, tamanho_total_vendas, CALCULOS);
	
	free(arq_para_vendas);
	
	system("pause");
	return 0;
		
}

int Sal_ja_existe(int pSal, dados_basicos *pV, int pTam){
	int i;
	
	if(pV == NULL)
		return -1;
	else{
		for(i = 0; i < pTam; i++){
			if(pSal == pV[i].salario_bruto)
				return i;
		}
		return -1;
	}
}

void Exibe_dados_salario(dados_basicos *Dp, int pTam, FILE *CALCULOS){
	int i;
	fprintf(CALCULOS,"Raphael dos santos freitas\n");
	fprintf(CALCULOS,"isaque gabriel\n");
	fprintf(CALCULOS,"    Bruto  AliqINSS   Val.INSS  Base I.R.  AliqIR   Val.IR   Liquido\n");
	for(i = 0; i < pTam; i++)
	{
		fprintf(CALCULOS,"%9.2lf %9.2lf %10.2lf %10.2lf %7.3lf %8.2lf %9.2lf\n", Dp[i].salario_bruto, Dp[i].AliqINSS, Dp[i].Val_INSS, Dp[i].Base_I_R, Dp[i].AliqIR, Dp[i].Val_IR, Dp[i].Liquido);
	}
}
