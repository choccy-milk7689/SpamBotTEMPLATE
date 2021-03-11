set shell = createobject ("wscript.shell")

strtext = inputbox ("escreva abaixo a mensagem que deseja spamar","SpamBOT.v.1.0")
strtimes = inputbox ("quantas vezes deseja spamar?","SpamBOT.v.1.0")
strspeed = inputbox ("em qual velocidade deseja spamar? (1000 = 1 por sec, 100 = 10 por sec etc)","SpamBOT.v.1.0")
strtimeneed = inputbox ("quantos segundos para iniciar o ataque?","SpamBOT.v.1.0")

If not isnumeric (strtimes & strspeed & strtimeneed) then
msgbox "o senhor esqueceu de escrever por favor tente de novo"
wscript.quit
End If
strtimeneed2 = strtimeneed * 1000
do
msgbox "o senhor tem " & strtimeneed & " segundos para iniciar o ataque."
wscript.sleep strtimeneed2
for i=0 to strtimes
shell.sendkeys (strtext & "{enter}")
wscript.sleep strspeed
Next
wscript.sleep strspeed * strtimes / 10
returnvalue=MsgBox ("o senhor deseja atacar de novo?",36)
If returnvalue=6 Then
Msgbox "Ok preparando ataque"
End If
If returnvalue=7 Then
msgbox "desligando Spambot"
wscript.quit
End IF
loop