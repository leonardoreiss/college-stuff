dim n1, n2, n3, media, situacao 'Declaração de variaveis --> só existe variaveis string, depois muda
dim resp, audio

call carregar_voz
sub carregar_voz()
set audio = createObject("SAPI.SPVOICE") '-> set sempre para comandos do windows / SAPI.SPVOICE -> módulo de voz
audio.volume = 100 '-> audio no volume maximo 
audio.rate = 2 '-> velocidade da voz 

call entrada_notas'a entra tem que estar fiel (faz desse jeito que da bom)     
'tem que colocar a entrada da proxima função dentro da antiga, se não  ele não ira chamar
end sub 

sub entrada_notas()     

'Entrada de dados
n1 = cdbl (inputbox("Digite a nota 01","AVISO")) 'cdbl -> string para double / inputbox -> entrada de dados
n2 = cdbl (inputbox("Digite a nota 02","AVISO"))
n3 = cdbl (inputbox("Digite a nota 03","AVISO"))

'Processamento
media = round ((n1 + n2 + n3) / 3,1) 'round -> não faz dizima periodica, o X,1 o 1 é quantas casas fica depois da virgula  

if media < 4 then
    situacao = "Reprovado"
elseif media >= 4 and media < 7 then
    situacao = "Exame"
else 
    situacao = "Aprovado"
end if

'Saida de dados 

'por voz
audio.speak ("Rendimento do aluno" + vbnewline &_
              "Media Final "& media &"" + vbnewline &_
              "Situacao do aluno "& situacao &"")'-> reproduzir a fala 

'por mensagem :)
resp = msgbox("Rendimento do aluno" + vbnewline &_
              "Media Final: "& media &"" + vbnewline &_
              "Situacao do aluno: "& situacao &"" + vbnewline &_
              "Novo Calculo?", vbquestion + vbyesno, "AVISO")
if resp = vbyes then
    call entrada_notas
else 
    wscript.quit
end if
end sub