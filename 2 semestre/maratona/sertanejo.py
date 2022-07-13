duplas = {}
compositores = []
compositoresParcerias = {}
comporamComSaracura = {}
numProximidade = {}
proximInfinito = []
rankNumerosProx = []

# Recebe uma string contendo o nome de dois compositores 
# separados com um espaço em branco e a letra 'e' minúscula 
# e outro espaço em branco, recebe um int n que indica o 
# número da linha e gera uma lista com os nomes dos compositores
# e aloca no dicionário duplas.
def agruparDuplas(linha:str, n:int):
        
        pivo = linha.find("e")
        fimString = (linha.find("\n") if linha.find("\n") != -1 else len(linha))

        pCompositor= linha[0:(pivo-1)]
        sCompositor = linha[(pivo+2):int(fimString)]
        duplas[n] = [pCompositor, sCompositor]  

# Recebe uma string contendo o nome de dois compositores 
# separados com um espaço em branco e a letra 'e' minúscula 
# e outro espaço em branco e aloca na lista compositores 
# o nome de cada compositor sepadaramente 
def listarCompositores(linha:str):
        
        pivo = linha.find("e")
        fimString = (linha.find("\n") if linha.find("\n") != -1 else len(linha))
        
        pCompositor= linha[0:(pivo-1)]

        sCompositor = linha[(pivo+2):int(fimString)]

        if compositores.count(pCompositor) == 0:
                compositores.append(pCompositor)
        if compositores.count(sCompositor) == 0:
                compositores.append(sCompositor)


# Recebe uma string com nome de um compositor, 
# agrupa todas parceirias dele em uma lista
# e aloca no dicionário compositoresParceirias.
def agruparParceirias(compositor:str):

        parceirias = [] 

        for i in range(len(duplas)):
                dupla = duplas[i]
                if dupla[0] == compositor:
                        if parceirias.count(dupla[1]) == 0:
                                parceirias.append(dupla[1])
                if dupla[1] == compositor:
                        if parceirias.count(dupla[0]) == 0:
                                parceirias.append(dupla[0])
        compositoresParcerias[compositor] = parceirias

# Aloca no dicionário comporamComSaracura
# os compositores que fizeram dupla com Saracura 
#  e adiciona um número de proximidade 1 para eles.
def addNumProximidadeParceirosSaracura():

        # pegando todos parceiros do Saracura
        parceiros = compositoresParcerias["Saracura"]

        for i in range(len(parceiros)):
                comporamComSaracura[parceiros[i]] = 1
                del compositoresParcerias[parceiros[i]]
                compositores.remove(parceiros[i])

        del compositoresParcerias["Saracura"]

# Recebe uma string compositor, com o nome de um compositor
# e verifica se alguma de suas parceirias comporam com o saracura,
# se não, verifica se alguma de suas parceirias compos indiretamente
# com saracura e aloca no dicionário numProximidade o nome do compositor 
#  recebendo o menor número de próximidade de seu parceiro +1.
def addNumProximidadeIndireto(compositor:str):
        encontrou = False
        if compositor != "Saracura":
                parceiros = compositoresParcerias[compositor]
                for i in range(len(parceiros)):

                        if comporamComSaracura.get(parceiros[i]) != None:
                                numProximidade[compositor] = comporamComSaracura[parceiros[i]] + 1
                                encontrou == True
                                break


                if encontrou == False:
                        for i in range(len(parceiros)):
                                
                                if numProximidade.get(parceiros[i]) != None:
                                        numProximidade[compositor] = numProximidade[parceiros[i]] + 1
                                        break

# Recebe uma string compositor e se ele não compos com ninguém
# indiretamente com Saracura, então aloca no dicionário proximInfinito 
def addInfinitos(compositor:str):
        
        if numProximidade.get(compositor) == None and compositor != "Saracura":
                proximInfinito.append([compositor, "infinito"])

def main():
        
        with open ("sertanejo.txt","r") as arquivo:
                conteudo = arquivo.readlines()

        for i in range(int(conteudo[0])):
                agruparDuplas(conteudo[i+1],i)
                listarCompositores(conteudo[i+1])
       
        
        for compositor in compositores:
                agruparParceirias(compositor)

        addNumProximidadeParceirosSaracura()
        
        for compositor in compositores:
                addNumProximidadeIndireto(compositor)

        for compositor in compositores:
                addInfinitos(compositor)

        for compositor in comporamComSaracura:
                rankNumerosProx.append([compositor,comporamComSaracura[compositor]])
        for compositor in numProximidade:
                rankNumerosProx.append([compositor,numProximidade[compositor]])

        listaOrdenada = sorted(rankNumerosProx, key = lambda x: (x[1], x[0]))
        listaOrdenadaInfinitos = sorted(proximInfinito, key = lambda x: (x[1], x[0]))

        for compositor in listaOrdenada:
                compositor_ = compositor[0]
                num         = compositor[1]
                print(compositor_ + " : " + str(num))

        for compositor in listaOrdenadaInfinitos:
                compositor_ = compositor[0]
                num         = compositor[1]
                print(compositor_ + " : " + num)

main()