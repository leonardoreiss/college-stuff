#include <stdio.h>
#include <stdlib.h>

typedef struct lista{
	int info;//informação
	struct lista *prox;//ponteiro para o proximo
}Lista;

Lista *lista_cria(){//função simbólica - inicia o ponteiro com NULL
	return NULL;
}

int lista_vazia(Lista *ls){//retorna 1 se lista vazia
	return(ls==NULL);
}
Lista* lista_insere(Lista *ls, int dado){//insere o dado no inicio da lista e retorna o recem inserido
	Lista *novo=(Lista*)malloc(sizeof(Lista));
	novo->info=dado;
	novo->prox=ls;
	return novo;
}
Lista* lista_ordenada (Lista* li, int v){
	Lista*	ant =NULL;
	Lista* p=li;
	//cria novo elemento
	Lista* novo=(Lista*)malloc (sizeof (Lista));
	novo->info = v;
	//procura posição de inserção
	while(p!=NULL && p->info < v){
		ant=p;
		p=p->prox;
	}
	//encadeia o elemento
	if(ant ==NULL) {//insere no inicio
		novo->prox=li;
		li=novo;
	}
	else{
		//insere no meio ou no fim da lista
		novo->prox=ant->prox;
		ant->prox =novo;
		}
	return li;
}
int lista_conta(Lista *ls){//conta os elementos da lista
	Lista *aux;
	int cont = 0;
	for(aux=ls;aux!=NULL; aux=aux->prox)
		cont++;
	return cont;
}

void lista_soma(Lista *ls){//soma os elementos da lista
	Lista *aux;
	int soma = 0;
	for(aux=ls;aux!=NULL; aux=aux->prox)
		soma = soma + aux->info;
	printf("A soma eh: %d", soma);
}

void lista_ultimo(Lista *ls){//ultimo elemento da lista
	Lista *aux;
	int soma = 0;
	for(aux=ls;aux!=NULL; aux=aux->prox)
		soma = soma + aux->info;
	printf("A soma eh: %d", soma);
}

void lista_mostra(Lista *ls){//mostra os elementos da lista
	Lista *aux;
	for(aux=ls;aux!=NULL; aux=aux->prox)
		printf("%d\t",aux->info);
	printf("\n");
}
/* retorna o elemento ou a lista original*/
Lista* lista_retira (Lista* li, int dado){
	Lista* ant =NULL; //ponteiro para o anterior
	Lista *aux = li;// ponteiro para percorrer a lista
	//procura o elemento na lista guardando seu anterior
	while(aux !=NULL && aux->info !=dado){
		ant=aux;
		aux=aux->prox;
	}
		//verifica se achou o elemento
	if(aux ==NULL){
		printf("\nNao localizado\n");
		return 	li; //não achou retorna a lista
	}
	//retira o elemento
	if(ant ==NULL) //primeiro da lista
		li=aux->prox;
	else
		//retira do meio/fim da lista
		ant->prox= aux-> prox;
	free(aux);
	return li;
}
Lista *lista_busca(Lista *ls, int v){//retorna o item da lista que contem o valor ou NULL
	Lista *a;//lista auxiliar
	for(a=ls;a!=NULL; a=a->prox)
		if(a->info==v)
			return a;
	return NULL;
}
void lista_libera(Lista *ls){
	Lista *p, *t;
	p=ls;
	while(p!=NULL){
		t=p->prox;
		free(p);
		p=t;
	}
}
void menu(){
	system("cls");
	printf("*** Escolha uma opcao***\n");
	printf("1 - inserir\n");
	printf("2 - remover\n");
	printf("3 - mostrar\n");
	printf("4 - buscar\n");
	
	printf("5 - conta elementos\n");//int conta(lista *ls)
	printf("6 - soma elementos\n");//void soma(lista *ls)
	printf("7 - ultimo elemento\n");//void ultimo(lista *ls)
	
	printf("9 - fim\n");
	printf("==> ");
	
}
int main(){
	Lista *li=lista_cria();
	int dado, opmenu, aaux;
	Lista *aux;//ponteiro auxiliar para a busca
	do{
		menu();
		scanf("%d",&opmenu);
		switch(opmenu){
			case 1://insere
				printf("Digite o elemento a ser inserido: ");
				scanf("%d",&dado);
			//	li=lista_insere(li, dado);
				li=lista_ordenada(li, dado);
				break;
			case 2://remove
				printf("Digite o elemento a ser removido: ");
				scanf("%d",&dado);
				li=lista_retira(li, dado);
				break;
			case 3://mostra
				if(lista_vazia(li))
					printf("lista vazia\n");
				else
					lista_mostra(li);
				break;
			case 4://buscar
				printf("Digite o elemento a ser procurado: ");
				scanf("%d",&dado);
				aux=lista_busca(li, dado);//tem que usar um ponteiro auxiliar para não perder a lista original
				if(aux==NULL)
					printf("Nao localizado\n");
				else
					printf("%d localizado\n",aux->info);
				break;
			case 5: //contar
				aaux = lista_conta(li);
				printf("O numero de elementos e: %d",aaux);
				break;
				
			case 6: //somar
				lista_soma(li);
		}
		printf("\n");
		system("pause");
	}while(opmenu!=9);
}
