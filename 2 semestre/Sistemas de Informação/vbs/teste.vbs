dim a(40), n, i, audio
dim resp 
dim pts, perg
dim nome, speak, jump

pts = 0
speak = 1
jump = 1


call carregar_voz
sub carregar_voz()
	set audio = createobject("SAPI.SPVOICE")
	audio.volume = 100
	audio.rate = 2
	call aleatorio
end sub

call aleatorio
sub aleatorio()
randomize(second(time)) 'sorteio dinamico pela hora do S.O.
		n = int (rnd * 10) + 1  '+1 pra não ter o zero no sorteio, rnd --> comando random
		'call carregar_plvrs
end sub

call carregar_plvrs
sub carregar_plvrs()
	a(1) = "ano"
	a(2) = "cabo"
	a(3) = "fita"
	a(4) = "dia"
	a(5) = "rei"
	a(6) = "gato"
	a(7) = "rato"
	a(8) = "mosca"
	a(9) = "tela"
	a(10) = "laço"
	a(11) = "cachorro"
	a(12) = "mosquito"
	a(13) = "positivo"
	a(14) = "negativo"
	a(15) = "alface"
	a(16) = "morango"
	a(17) = "guitarra"
	a(18) = "gaveta"
	a(19) = "musgo"
	a(20) = "navegador"
	a(21) = "pirata"
	a(22) = "mulher"
	a(23) = "homem"
	a(24) = "sapato"
	a(25) = "desenho"
	a(26) = "chiclete"
	a(27) = "pirulito"
	a(28) = "festa"
	a(29) = "regra"
	a(30) = "paraclorobenzilpirrolidinonetilbenzimidazol"
	a(31) = "admoesta"
	a(32) = "fenecimento"
	a(33) = "anticonstitucionalmente"
	a(34) = "hexanitrodifenilamina"
	a(35) = "meningoencefalomielite"
	a(36) = "interconfessionalismo"
	a(37) = "traquelatloidoccipital"
	a(38) = "fotocromometalografia"
	a(39) = "traquelatloidoccipital"
	a(40) = "preterintencionalidade"
	i = 1

	
	nome = inputbox("digite o nome do jogador", "Soletrando")
	
	do while i <= 10
		audio.speak(a(n))
		resp = (ucase((inputbox("Nome do jogador: "&nome&"" + vbnewline &_
							 "[0]Ouvir a palavra novamente" + vbnewline &_
							 "[P]Pular a palavra" + vbnewline &_
							 "[E]Encerrar o jogo", "Soletraando"))))
		'Repetir palavra
		if resp = "O" then
			speak = 0
			audio.speak(a(n))
		else
			msgbox("Sem chance de escutar!"), vbexclamation + vbokonly, "Soletrando"
		end if
		
		'Pular palavra
		if (ucase(resp)) = "P" and jump then
			jump = 0
	'		call 
			
		else
			msgbox("Sem chance de pular!"), vbexclamation + vbokonly, "Soletrando"
		end if
		
		if resp = a(n) then
			i = i + 1
			msgbox("Acertou !!!"), vbinformation + vbokonly, "AVISO"
			pts = pts + 1000
		else
			msgbox("Errou :( !!!"), vbinformation + vbokonly, "AVISO"
			perg = msgbox("Sua pontuação: " &pts& "" + vbnewline &_
				   "Deseja jogar novamente ?", vbquestion + vbyesno, "AVISO")	
			if perg = vbyes then
				call carregar_plvrs 
			else 
				wscript.quit
			end if
		end if
	
	loop
end sub
