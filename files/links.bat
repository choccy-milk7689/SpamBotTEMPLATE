@echo off
title Links
mode 75,25
echo *****************************************************************
echo ** digite 1 para o link do telegram 2 para o link do youtube   **
echo ** e 3 para o github                                           **
echo ** @Loshad#5595                                                **
echo *****************************************************************
: chatloop
set /p input=ola %computername% digite um comando^>
if %input%==1 start https://t.me/joinchat/TdG8frMDSzsxZGUx
if %input%==2 start https://www.youtube.com/channel/UCBITyx_njlrhlt0Rj6R0-LQ
if %input%==3 start https://github.com/Los-had
goto chatloop
end