:: Añada la ruta de este archivo en la sgt dirección de regedit.exe
:: Equipo\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor
:: En esa ruta, crea un (valor de cadena), con el nombre: AutoRun, y pasas la ruta
:: De este archivo Alias.cmd

@echo off
cls

DOSKEY jv=java --version
DOSKEY gv=git --version
DOSKEY nv=node --version
DOSKEY pv=python --version
DOSKEY nv=nvim --version
DOSKEY c=cls
DOSKEY e=exit
DOSKEY ..=cd..
DOSKEY gi=git init
DOSKEY ga=git add .
DOSKEY gs=git status
DOSKEY gc=git commit -m "Actualización"
DOSKEY gp=git push
DOSKEY gl=git pull
DOSKEY glg=git log --oneline
DOSKEY n=nvim .
DOSKEY cdn=cd AppData\Local\nvim
DOSKEY cdp=cd D:\Projects\
DOSKEY htop=taskmgr
DOSKEY shutdown=shutdown /P
DOSKEY reboot=shutdown /r
DOSKEY ls=dir
DOSKEY rm=rmdir
DOSKEY del=del
