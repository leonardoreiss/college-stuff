dim op, executar, resp

call criar_projeto
sub criar_projeto()

	set executar = wscript.createobject("wscript.shell")
	call menu 
	end sub

sub menu()
	op = cint(inputbox("[ 1 ] Gerenciador de Tarefas" + vbnewline &_
					   "[ 2 ] Painel de Controle" + vbnewline &_
					   "[ 3 ] Teclado Virtual" + vbnewline &_
					   "[ 4 ] Bloco de notas" + vbnewline &_
					   "[ 5 ] Paint" + vbnewline &_
					   "[ 6 ] outra Tela" + vbnewline &_
					   "[ 7 ] Encerrar Script" , "Escolha uma opção"))
	select case op 
		case 1:
			executar.Run("%systemroot%\system32\taskmgr.exe")
		case 2:
			executar.Run("%systemroot%\system32\control.exe")
		case 3:
			executar.Run("%systemroot%\system32\osk.exe")
		case 4:
			executar.Run("%systemroot%\system32\notepad.exe")
		case 5:
			executar.Run("%systemroot%\system32\mspaint.exe")
		case 6:
			executar.Run("*****Local do arquivo******")
			wscript.quit
		case 7:
			resp = msgbox ("Deseja realmente encerrar?", vbQuestion+vbYesNo, "ATENÇÃO")
			if resp = vbyes then 
				wscript.quit
			else 
				call menu
			end if
		case else 
			msgbox("Opção Inválida!!!"), vbExclamation+vbokonly, "ATENÇÃO"
	end Select
	
	call menu
	end sub
