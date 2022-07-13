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

do while i <= 10
    randomize(second(time)) 'sorteio dinamico pela hora do S.O.
    n = int (rnd * 6) + 1  '+1 pra não ter o zero no sorteio, rnd --> comando random
    msgbox(nome(n)), vbinformation + vbokonly, "Qtd de sorteios: "& i &""
    i = i + 1
loop

msgbox ("Fim da leitura!"), vbinformation + vbokonly, "AVISO"
end sub