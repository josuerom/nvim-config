:: Añada la ruta de este archivo en la sgt dirección del (regedit)
:: Diríjase a: Equipo\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor\
:: En esa ruta, crea un (valor de cadena) con el nombre: AutoRun, y pasale la ruta:
:: %HOMEPATH%\AppData\Local\nvim\Alias.cmd   ¡Y Listo!

@echo off

DOSKEY jv=java --version
DOSKEY gv=git --version
DOSKEY nv=node --version
DOSKEY pv=python --version
DOSKEY nev=nvim --version
DOSKEY c=cls
DOSKEY e=exit
DOSKEY ..=cd..
DOSKEY gi=git init
DOSKEY ga=git add .
DOSKEY gs=git status
DOSKEY gc=git commit -m "♻ Update"
DOSKEY gcc=git commit -v
DOSKEY gp=git push
DOSKEY gl=git pull
DOSKEY glg=git log --oneline
DOSKEY n=nvim .
DOSKEY cdn=cd %HOMEPATH%\AppData\Local\nvim
DOSKEY cdp=cd D:\Projects\
DOSKEY htop=taskmgr
DOSKEY shutdown=shutdown /P
DOSKEY reboot=shutdown /r
DOSKEY ls=dir
DOSKEY rmdir=rmdir
DOSKEY del=del
DOSKEY color=color 2
DOSKEY ipc=ipconfig /all
DOSKEY title=title INICIANDO EL MODO HACKERMEN...
