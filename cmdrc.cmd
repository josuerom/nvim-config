:: El siguiente archivo es para poder usar alias dentro de la cmd en Windows

:: Añada la ruta de este archivo en la sgt dirección del regedit
:: Diríjase a: Equipo\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor\
:: En esa ruta, crea un (valor de cadena) con el nombre: AutoRun, y peguele la ruta de este archivo:
:: %HOMEPATH%\AppData\Local\nvim\cmdrc.cmd  ¡Listo!

cls
@echo off
DOSKEY comcpp=g++ -std=c++20 -Wall -Wextra -Wshadow -Wpedantic -Wconversion -Djosuerom -Wformat=2 -o %HOMEPATH%\build\sol.exe
DOSKEY runcpp=%HOMEPATH%\build\sol.exe
DOSKEY runjava=java
DOSKEY c=cls
DOSKEY e=exit
DOSKEY ..=cd ..
DOSKEY gi=git init
DOSKEY gs=git status
DOSKEY ga=git add .
DOSKEY gc=git commit -m "♻ Update"
DOSKEY gp=git push
DOSKEY gl=git pull
DOSKEY gcl=git clone
DOSKEY glo=git log --oneline
DOSKEY nv=nvim .
DOSKEY cnvim=cd %HOMEPATH%\AppData\Local\nvim\
DOSKEY cwork=cd D:\Workspace\
DOSKEY chome=cd %HOMEPATH%
DOSKEY htop=taskmgr.exe
DOSKEY poweroff=shutdown /P
DOSKEY reboot=shutdown /r
DOSKEY logout=shutdown /i
DOSKEY mv=move
DOSKEY ren=ren
DOSKEY cp=copy
DOSKEY touch=echo. > 
DOSKEY ls=dir
DOSKEY cat=type
DOSKEY del=del
DOSKEY rm=rmdir
DOSKEY modehack=color 2
DOSKEY ip=ipconfig /all
DOSKEY title=title ¡MODO HACKERMEN...!
DOSKEY v=--version
DOSKEY install=choco install
DOSKEY upgrade=choco upgrade
DOSKEY remove=choco uninstall
cls
