<div align="center">
<p>
    <a>
      <img alt="Linux" src="https://img.shields.io/badge/Linux-%23.svg?style=flat-square&logo=linux&color=FCC624&logoColor=black" />
    </a>
    <a>
      <img alt="macOS" src="https://img.shields.io/badge/macOS-%23.svg?style=flat-square&logo=apple&color=000000&logoColor=white" />
    </a>
    <a>
      <img alt="Windows" src="https://img.shields.io/badge/Windows-%23.svg?style=flat-square&logo=windows&color=0078D6&logoColor=white" />
    </a>
    <a href="https://github.com/josuerom/nvim-config/network">
      <img alt="Forks" src="https://badgen.net/github/forks/josuerom/nvim-config">
    </a>
    <a href="https://github.com/josuerom/nvim-config/stargazers">
      <img alt="Stars" src="https://badgen.net/github/stars/josuerom/nvim-config">
    </a>
    <a href="https://github.com/neovim/neovim/releases/tag/stable">
      <img src="https://img.shields.io/badge/Neovim-0.6.1-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=green" alt="Neovim minimum version"/>
    </a>
</p>
</div>

<H1 align="center">Fantástica Instalación y Configuración de Neovim para SO Windows - February, 2021.</H1>

<p align="center" width="0">
   <img align="center" width="645" src="https://github.com/josuerom/nvim-config/blob/main/.config/screenshot/neovim-logo-shadow.png">
</p>

<p align="center">
<img src="https://github.com/josuerom/nvim-config/blob/main/.config/screenshot/2022-02-26_18-34-31_Trim.gif" width="800">
</p>

## Introducción.
El presente proyecto describe el proceso que debes seguir para personalizar e instalar **NEOVIM** en su versión más reciente a tu día; proyecto realizado tras la devaluación e ineficiencia de instalaciones que hay sobre neovim en español para el sistema operativo **Windows 8.1, 10 y 11**, gran parte de los programadores profesionales más exitosos, hoy utilizan este editor de texto/código muy profesional. Asimismo éste estudio de elaboración propia revela la calidad de instalación, configuración y personalización. Para una mejor comprensión de la guía enfoquese y sobre todo descargue cada una de las herramientas inicializadas a continuación:

## Herramientas necesarias.

1. Instalar **Windows Terminal** (Opcional)
2. Instalar manejador de paquetes **Chocolatey & Neovim**
3. Instalar **Git**
4. Instalar **Node.js**
5. Descargar archivos publicados en **este repositorio**
6. Instalar el gestor de plugins **vim plug**

**Tenga en cuenta que:** para instalar Neovim, si o si necesitarás utilizar todas esas 5-6 herramientas, para ello aquí conocerás el paso a paso para instalar cada una correctamente sin errores ni falsa información, cabe mensionar que, *Windows PowerShell o la CMD* vienen instalado de fabrica en la pc's con Windows, por eso no será necesario explicarte cómo ejecutarlo, ni instalarlo, ni abrirlo. ¡Si estas acá metido es porque ya debes de saber abrirlo y ejecutar uno que otro comando. Si no sabes pues te invito a mira un video en YT. ¡Listo ya estás preparado!.

# Paso a paso para la instalación de NeoVim.
### Paso No. 1. Instalar Windows Terminal (Opcional).
Buen día, estimado saludo amiga/o para realizar la instalación primero ábrete **Microsft Store**; una vez se inicie, en la barra de búsqueda escribe: **terminal**. Luego de esto, debes seleccionar el programa que se encuentra en la siguiente captura de pantalla que te dejo, lo más seguro es que el programa te aparezca de primero como me sucedió conmigo.

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/nvim-config/blob/main/.config/screenshot/win-terminal.png">
</p>

Una vez finalice la instalación, ejecutala como administrador ya que dentro de poco se deben ejecutar una serie de comandos que te explicaré. Posteriormente, el motivo por el cual recomiendo su instalación es para que la Terminal tenga una apariencia más agradable intuitiva. Por otro lado, también podrían usar la ***cmd o símbolo del sistema*** pero lo malo es que con esa terminal neovim nunca se verá igual a como en la otra, si quieres prueba lo, yo utilizo las dos terminales.

### Paso No. 2. Instalar Chocolatey & Neovim.
Chocolatey es un gestor de paquetes que nos permite instalar programas desde la terminal, en pocas palabras, nos servirá para instalar programas que no están en la tienda de microsoft; si o si debes instalarlo para luego instalar neovim valga la redundancia. OJO que debes copiar y pegar esos comandos en la pestaña PowerShell de la terminal recientemente instalada.

Ejecuta éste primer comando para conocer el estado de las restricciones de tu computador:
```powershell
Get-ExecutionPolicy
```  
Ejecuta éste otro comando, para deshabilitar las restricciones y no se presenten posibles errores:
```powershell
Set-ExecutionPolicy AllSigned
``` 
Por último, añade este comando ya que contiene la instalación del gestor **Chocolatey**:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
Comparto captura de pantalla, a mi me arrojó esos errores porque ya lo tengo instalado, tu solo debes seguir los pasos que te indíco.

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/nvim-config/blob/main/.config/screenshot/chocolatey.png">
</p>

Ahora copia y pega este otro comando para instalar neovim en su versión más reciente a la fecha en que lo vas a instalar.
```choco
choco install neovim
``` 
Cuándo te salga éste mensaje en la terminal: 
> Do you want to run the script?([Y]es/[A]ll - yes to all/[N]o/[P]rint): A

Digita la letra **A** (en mayúscula) y da un enter para así aceptar que instale todos los scripts necesarios, con la instalación de **Neovim** junto al gestor de paquetes **Chocolatey** has terminado correctamente el segundo paso.

### Paso No. 3. Instalar Git.
Git es un software de control de versiones diseñado por **Linus Torvalds** quién es él mismo creador del Sistema Operativo **GNU-LINUX**, fue pensado en la eficiencia, la confiabilidad y compatibilidad para mantenimientos de versiones; para realizar la instalación de git da un [click aquí](https://git-scm.com/downloads "https://git-scm.com/downloads"), este es un enlace que te llevará a la página oficial de Git. Si no lo tienes instalado deberás instalarlo para que neovim no te arroje errores al momento de iniciarlo. Por otra parte, si usted ya lo tiene instalado haga caso omiso a este paso y continúe con los restantes.

### Paso No. 4. Instalar Node.js.
**Node.js** es un entorno en tiempo de ejecución multiplataforma, de código abierto, para la capa del servidor basado en el lenguaje de programación JavaScript, en pocas palabras, es un programa el cual permite interpretar o ejecutar archivos javascript y TypeScript sin necesidad de correrlo en el navegador, es por eso que Node.js integra su consola; pero esto es siempre y cuando valles a trabajar con **ALGUNOS DE ELLOS**, si tu no lo dominas o no te interesa trabajar con el *"pues no lo instales y ya"*. Por otra parte, si no lo instalas cada vez que abras neovim te saldrá un aviso en rojo pidiendote que instales Node.js, pero no te preocupes de que podrás utilizar neovim sin problema alguno. 

Para instalarlo da un [click aquí](https://nodejs.org/es/download/ "https://nodejs.org/es/download/"), este enlace te llevará directamente a su pagina oficial de descarga, si requieres más información de instalación, visualizate un video en **YouTube**.

### Paso No. 5. Descarga los archivos publicados en éste repositorio.
Esta es la personalización que actualmente tengo en neovim:

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/nvim-config/blob/main/.config/screenshot/nvim-completo.png">
</p>

**PREGUNTA:** ¿Te gustaría tener neovim como lo tengo yo?. Si tu respuesta es un **SÍ** deberás descargarte los archivos de este repositorio ya que son necesarios para que tu Neovim tenga una buena interfaz bacana y las mismas funcionalidades que manejo como: atajos y plugins. Una vez se haya descargado debes extraer el archivo _(nvim-config-windows7-8-10-11-nvim.zip)._ Luego de ello, la carpeta extraída obligatoriamente cambiale el nombre por: **nvim** (en minúsculas).

Ahora bien, corta o copia esa carpeta renombrada 'nvim'. A continuación, dirígete a la siguiente ruta en el Explorador de Archivos: **C:\Users/TuNombreDeUsuario\AppData\Local\** cuando estes ubicado ahí pegas la carpeta. OJO que si no pegas la carpeta en esa ruta que te dije, no podrás abrir NEOVIM.

Para abrir neovim lleva a cabo un comando sencillo en la _Consola/Terminal PowerShell o Símbolo del Sistema_, debes ubicarte en la ruta donde colocaron neovim. La ruta tuya es, ¡la misma mía solo que cambia el nombre de usuario y debes entrar a carpeta nvim! **C:\Users\josue\AppData\Local\nvim\**. Cuando estes ahí debes ingresar el siguiente comando y presionar enter:

```vim
nvim init.vim
``` 

Añado captura de pantalla, por sino me entendiste muy bien, me referia a está:

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/nvim-config/blob/main/.config/screenshot/init-vim.png">
</p>

Luego de ejecutar el comando, te arrojará muchos errores pero _NO TE ASUSTES NI DEPRIMAS_ que son normales las primeras veces que lo ejecutas, aparecen porque los plugins no se han instalado. Y deben ser éstos mismos errores los que te aparezcan allá:

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/nvim-config/blob/main/.config/screenshot/errores-normales.png">
</p>

Para saltar esos errores puedes presionar varias veces la tecla **Enter** o solo una vez la tecla **Esc**, nada más faltaría instalar el gestor de plugins **vim plug** para que así culmines con el último paso.

### Paso No. 6. Instalar el gestor de plugins 'VIM PLUG'
**Vim plug** es un administrador de plugins para el editor de texto vim y neovim minimalista, de código abierto creado por **junegunn** hace tiempo. Además es totalmente libre de uso. Una de sus principales y más conmovedores funcionalidades es que puede instalar, actualizar y desinstalar complementos en paralelo. Crea clones para minimizar el uso de espacio del disco y el tiempo de descarga; para realizar una descarga limpia y ligera. Ejecuta en la pestaña PowerShell abierta como administrador, el siguiente comando:

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
  ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
``` 

Ese comando creará unos ficheros y archivos como **plug.vim** en la ruta: **C:\Users\TuNombreDeUsuario\AppData\Local\nvim-data\site\autoload\plug.vim**, que nos permitirá instalar los plugins, etc... Si no ejecutas el comando no podrás obtener la misma personalización que tengo yo. 

Continuando con esta super guía de instalación, en la ventana principal o ventana sin nada de nvim escribe el comando que vez debajo de esta línea _tal cual como lo escribí yo_, recuerda que nvim debe estar en modo **NORMAL:** para que te funcione.
> :PlugInstall

Añado captura de pantalla:

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/nvim-config/blob/main/.config/screenshot/pluginstall.png">
</p>

Así podrás instalar todos los plugins que manejo a diario, añado otra captura guía.

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/nvim-config/blob/main/.config/screenshot/plugins-instalados.png">
</p>

Después de que hayan terminado todas las descargas y quieras conocer los cambios efectuados en tu editor. En modo **NORMAL** presiona las teclas:
> space + x
O cierra y vuelve a entrar.

El comando cerrará neovim completamente. Para que tú luego, lo vuelvas a abrir. ¡Si por si acaso usted no llega a recordar como abrirlo!. Ingresa el siguiente comando en la terminal pero para que te funcione ubicate en misma ruta que antes **C:\Users/TuNombreDeUsuario\AppData\Local\nvim\**. OK posicionado/a en esa ruta, ahora si escribe: 'nvim init.vim'.

En términos generales, veraz el cambio justo como en las imágenes que proporcioné al final de esta guía; cabe mencionar que, si deseas cambiar el tema u otra cosas que no te guste, deberás buscar como realizarlo.

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/nvim-config/blob/main/screenshot/nvim-init-vim.png">
</p>

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/nvim-config/blob/main/.config/screenshot/nvim-nerdtree_java.png">
</p>

### ¿Atrevete a comentarme que tal te pareció esta guía de instalación o que me faltó?
¿Quieres contactarte conmigo? Pues puedes hacerlo vía email, a mi correo:
```correo
josueromram@outlook.es
```

# Estimado usuario cordial saludo, le aviso que me encuentro trabajando duro en esté proyecto, y es por eso que constantemente publico cambios.

<p align="center" width="0">
   <img align="center" width="45" src="https://github.com/josuerom/nvim-config/blob/main/.config/screenshot/neovim-mark-flat.png">
</p> 
