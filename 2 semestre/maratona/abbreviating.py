from gettext import find

def formatarLinha(linha:str):

    i = (linha.find(" ") if linha.find(" ") != -1 else -1)

    nomeCompletoAbreviado = linha[0:i]

    if i != -1:

        linha = linha[i+1:]
        nomesAbreviados = abreveiaNomes(linha)

        if nomesAbreviados.find("\n") != -1:
            nomeCompletoAbreviado = nomeCompletoAbreviado + " " + nomesAbreviados
        else:
            nomeCompletoAbreviado = nomeCompletoAbreviado + " " + nomesAbreviados + "\n"
    else:
        nomeCompletoAbreviado = nomeCompletoAbreviado + "\n"

    return nomeCompletoAbreviado

def abreveiaNomes(linha:str):

    nomeCompletoAbreviado = ""
    
    while(linha.find(" ") != -1):
        nomeCompletoAbreviado = nomeCompletoAbreviado + " " + linha[0] + "." 
        
        linha = linha[(linha.find(" ")+1):]
        
    nomeCompletoAbreviado= nomeCompletoAbreviado + " " + linha

    return nomeCompletoAbreviado

def main():

    with open ("lista.txt","r") as arquivo:
        conteudo = arquivo.readlines()

    convidados = []

    for linha in conteudo:

        nome = formatarLinha(linha)
        convidados.append(nome)

    convidadosOrdenados = sorted(convidados)

    for convidado in convidadosOrdenados:
        print(convidado)

main()
