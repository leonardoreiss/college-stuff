dim n, i, nome(6) ' nome(x) --> vetor

call carregar_nomes
sub carregar_nomes()

nome(1) = "Moquidesia"
nome(2) = "Jurema"
nome(3) = "Lindolfo"
nome(4) = "Astolfo"
nome(5) = "Kleber"
nome(6) = "Tramontinaldo"
i = 1

do while i <= 6
    msgbox(nome(i)), vbinformation + vbokonly, "AVISO"
    i = i + 1
loop

msgbox ("Fim da leitura!"), vbinformation + vbokonly, "AVISO"
end sub