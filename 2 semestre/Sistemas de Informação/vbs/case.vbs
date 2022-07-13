dim farol, cor, resp 'variaveis 

call inicio 
sub inicio()
farol = cint(inputbox("[1] verde" + vbnewline &_ 
                      "[2] Amarelo" + vbnewline &_
                      "[3] Vermelho" + vbnewline &_ 
                      "[0 a 10] Encerrar Script", "CORES DO SEMÁFORO"))
select case farol 
        case 1:
            cor = "Verde - Siga em Frente"
        case 2:
            cor = "Amarelo - Atencao"
        case 3: 
            cor = "Vermelho - Pare"
        case 0, 10:
            resp = msgbox ("Deseja Encerrar?", vbquestion + vbyesno, "ATENÇÃO")
            if resp = vbyes then
                wscript.quit
            else
                call inicio
            end if
        case else
            cor = "Opção Inválida!"
end select 
msgbox("" & cor &""), vbInformation + vbokonly, "CORES DO SEMÁFORO"
call inicio
end sub