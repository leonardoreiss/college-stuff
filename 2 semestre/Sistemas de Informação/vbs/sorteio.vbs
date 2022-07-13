dim n, i, nome(6) ' nome(x) --> vetor

call carregar_nomes
sub carregar_nomes()

nome(1) = "Moquidesia"
nome(2) = "Jurema"
nome(3) = "Lindolfo"
nome(4) = "Astolfo"
nome(5) = "Kleber"
nome(6) = "Tramontinaldo"

for i = 6 to 1 step -1 'Estrutura de Repetição, step de quantos passos por vez 
    msgbox(nome(i)), vbinformation + vbokonly, "AVISO"
next 
    msgbox ("Fim da leitura!"), vbinformation + vbokonly, "AVISO"
end sub