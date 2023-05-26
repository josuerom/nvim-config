:: El siguiente archivo es para poder usar alias dentro de la cmd en Windows

:: Añada la ruta de este archivo en la sgt dirección del regedit
:: Diríjase a: Equipo\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor\
:: En esa ruta, crea un (valor de cadena) con el nombre: AutoRun, y peguele la ruta de este archivo:
:: %HOMEPATH%\AppData\Local\nvim\cmdrc.cmd  ¡Listo!

cls
@echo off
DOSKEY comcpp=g++ -std=c++20 -Wall -Wextra -Wshadow -Wpedantic -Wconversion -Djosuerom -Wformat=2 -o d:\workspace\build\sol.exe
DOSKEY runcpp=d:\workspace\build\sol.exe
DOSKEY runjava=java
DOSKEY c=cls
DOSKEY e=exit
DOSKEY ..=cd ..
DOSKEY gi=git init
DOSKEY gs=git status
DOSKEY ga=git add .
DOSKEY gc=git commit -m 
DOSKEY gcm=git commit -m "♻ Update"
DOSKEY gp=git push
DOSKEY gl=git pull
DOSKEY gcl=git clone
DOSKEY glo=git log --oneline
DOSKEY gbr=git branch
DOSKEY gd=git diff
DOSKEY gst=git stash
DOSKEY nv=nvim .
DOSKEY ccmd=nvim %HOMEPATH%\AppData\Local\nvim\cmdrc.cmd
DOSKEY cgitc=nvim %HOMEPATH%\.gitconfig
DOSKEY cnvim=cd %HOMEPATH%\AppData\Local\nvim\
DOSKEY cwork=cd d:\workspace\
DOSKEY chome=cd %HOMEPATH%
DOSKEY tem-cpp=copy d:\workspace\templates\tem.cpp A
DOSKEY tem-java=copy d:\workspace\templates\tem.java A
DOSKEY htop=taskmgr.exe
DOSKEY poweroff=shutdown /P
DOSKEY reboot=shutdown /r
DOSKEY logout=shutdown /i
DOSKEY mv=move
DOSKEY cp=copy
DOSKEY nf=copy >
DOSKEY ls=dir
DOSKEY df=del
DOSKEY cat=type
DOSKEY rm=rmdir
DOSKEY mhacker=color 2
DOSKEY ip=ipconfig /all
DOSKEY title=title ¡EN MODO HACKERMEN...!
DOSKEY v=--version
DOSKEY install=choco install
DOSKEY upgrade=choco upgrade
DOSKEY uninstall=choco uninstall
cls
