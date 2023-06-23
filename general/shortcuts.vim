"███████╗██╗  ██╗ ██████╗ ██████╗ ████████╗ ██████╗██╗   ██╗████████╗███████╗  ██╗   ██╗██╗███╗   ███╗
"██╔════╝██║  ██║██╔═══██╗██╔══██╗╚══██╔══╝██╔════╝██║   ██║╚══██╔══╝██╔════╝  ██║   ██║██║████╗ ████║
"███████╗███████║██║   ██║██████╔╝   ██║   ██║     ██║   ██║   ██║   ███████╗  ██║   ██║██║██╔████╔██║
"╚════██║██╔══██║██║   ██║██╔══██╗   ██║   ██║     ██║   ██║   ██║   ╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"███████║██║  ██║╚██████╔╝██║  ██║   ██║   ╚██████╗╚██████╔╝   ██║   ███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

let mapleader = " "

" ATAJOS de teclado compilar y ejecutar programas solo con extensiones (.java .cpp .py .js & .ts):
" <F1> compila el programa
" <F2> ejecuta el programa pero con archivo de entrada
" <F3> ejecuta el programa con entrada manual por terminal
" <F4> abre el archivo de entrada para modificar
function! RunJava()
   " para versiones de java superiores a la 8
   imap <F2> <Esc> :w<CR> :!java % < d:\workspace\sample\input<CR>
   nmap <F2> :w<CR> :!java % < d:\workspace\sample\input<CR>
   nmap <F3> :w<CR> :cd %:h<CR> :terminal<CR>icls<CR>java 
endfunction

function! RunCpp()
   imap <F1> <Esc> :w<CR> :!g++ % -o d:\workspace\build\nvim-sol.exe -std=c++17 -march=native -Wall -Wextra -Wshadow -Wvla -Djosuerom<CR>
   nmap <F1> :w<CR> :!g++ % -o d:\workspace\build\nvim-sol.exe -std=c++17 -march=native -Wall -Wextra -Wshadow -Wvla -Djosuerom<CR>
   imap <F2> <Esc> :w<CR> <F1> :!d:\workspace\build\nvim-sol.exe < d:\workspace\sample\input<CR>
   nmap <F2> :w<CR> :!d:\workspace\build\nvim-sol.exe < d:\workspace\sample\input<CR>
   nmap <F3> :w<CR> :terminal<CR>icls<CR>d:\workspace\build\nvim-sol.exe<CR>
endfunction

function! RunPython()
   imap <F2> <Esc> :w<CR> :!python % < d:\workspace\sample\input<CR>
   nmap <F2> :w<CR> :!python % < d:\workspace\sample\input<CR>
   nmap <F3> :w<CR> :cd %:h<CR> :terminal<CR>icls<CR>python 
endfunction

function! RunJsAndTs()
   imap <F1> <Esc> :w<CR> :!node %<CR>
   nmap <F1> :w<CR> :!node %<CR>
   imap <F2> <Esc> :w<CR> :!node % < d:\workspace\input<CR>
   nmap <F2> :w<CR> :!node % < d:\workspace\input<CR>
   nmap <F3> :w<CR> :cd %:h<CR> :terminal<CR>icls<CR>node 
endfunction

" para el modo NORMAL desabilito el desplazamiento con las flechas
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" salir del modo INSERT con <Esc> <Ctrl+c> y ññ
imap <C-c> <Esc>
imap ññ <Esc>

" desplazamiento vertical rápido con (hacia abajo -> ctrl+e) (hacia arriba -> ctrl+y)
nnoremap <C-k> 50 <C-e>
nnoremap <C-j> 50 <C-y>

" cambia el tamaño de pestañas verticales
nnoremap > 5<C-w>>
nnoremap < 5<C-w><

" colocar punto y coma al final de la línea, con <space+,>
nnoremap <Leader>, $a;<Esc>

" <space+t> abre la cmd y con <Ctrl+t> abre la powershell
nmap <Leader>t :call OpenCmd()<CR> <Esc> :resize 14<CR>
nmap <C-t> :call OpenPowerShell()<CR> <Esc>

" acceso rápido a archivos de configuración global
nmap <Leader>¿ :e ~/AppData/Local/nvim/general/shortcuts.vim<CR>
nmap <Leader>' :e ~/AppData/Local/nvim/general/plug-config.vim<CR>
nmap <Leader>0 :e ~/AppData/Local/nvim/general/plugins.vim<CR>
nmap <Leader>9 :e $MYVIMRC<CR>

" <F4> abre el archivo de entrada
nmap <F4> :e d:\workspace\sample\input<CR>
" refresca neovim con <F5>
nmap <F5> :so ~/AppData/Local/nvim/init.vim<CR>
" copia la ruta general del archivo abierto con <F6>
nnoremap <F6>kp :let @*=expand("%")<CR>
" entre al modo goyo sin distracciones, con <F7>
nmap <F7> :Goyo<CR>
imap <F7> <Esc> :Goyo<CR>i

" copia todo el contenido del archivo abierto con Ctrl + a
imap <C-a> <Esc> :w<CR> :%y+<CR>
nmap <C-a> :w<CR> :%y+<CR>

" para guardar los cambios del archivo <space+w> o <Ctrl+s> en modeo INSERT o NORMAL
nmap <Leader>w :w<CR>
nmap <C-s> <Esc> :w<CR>
imap <C-s> <Esc> :w<CR>
" para cerrar búfers <space+q> o <Ctrl+q>
nmap <C-q> :q<CR>
nmap <Leader>q :q<CR>
imap <C-q> <Esc> :q<CR>
" para salir rápidamente de nvim <space+x> o <Ctrl+x>
nmap <C-x> :qa!<CR>
nmap <Leader>x :qa!<CR>
imap <C-x> <Esc> :qa!<CR>

" abre el árbol, side bar o NERDTree con <space+e>
nmap <Leader>e :NERDTreeToggle<CR>
" abre arbol de nvim
nmap <Leader>p :Explore<CR>
" ejecute FZF (Fuzy Find Files)
nmap <Leader>f :FZF<CR>

" comentar línea con <}+}>
vmap }} <plug>NERDCommenterToggle
nmap }} <plug>NERDCommenterToggle
imap }} <Esc> :w<CR> <plug>NERDCommenterToggle

" navegación rápida entre pestañas abiertas
nnoremap <silent><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><C-j> :TmuxNavigateDown<CR>
noremap <silent><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><C-l> :TmuxNavigateRight<CR>

" atajos para el flujo rápido con Git
nnoremap <Leader>go :GV<CR>
nnoremap <Leader>g :Git init<CR>
nnoremap <Leader>gs :Git status<CR>
nnoremap <Leader>ga :Git add -A<CR>
nnoremap <Leader>gc :Git commit -m "♻ Update"<CR>
nnoremap <Leader>gcc :Git commit -v<CR>
nnoremap <Leader>glo :Git log --oneline<CR>
nnoremap <Leader>grr :Git remote add origin https://github.com/$USER$/.git
nnoremap <Leader>gpp :Git push -u origin main<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gpu :Git push --set-upstream origin main<CR>
nnoremap <Leader>gf :Git fetch<CR>
nnoremap <Leader>gl :Git pull<CR>
nnoremap <Leader>gm :Git merge<CR>

" flujo instantaneo con COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" dividir pantalla en dos [vertical] con <space+ii>
nnoremap <Leader>ii :vsp<CR>

" navegación entre pestañas abiertas con <spacer+l> y <space+h>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
" eliminar pestaña abierta con <space+dl>
nnoremap <Leader>dl :bdelete<CR>

" búsqueda por dos carácteres con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" atajos para el gestor de plugins vim-plug
nnoremap <Leader>pi :PlugInstall<CR>
nnoremap <Leader>pc :PlugClean<CR>
nnoremap <Leader>pu :PlugUpdate<CR>
nnoremap <Leader>pp :PlugUpgrade<CR>

" indentar líneas y bloques en modo VISUAL
vnoremap < <gv
vnoremap > >gv

" para multiples cursores debe poner el cursor encima de una palabra y presionar
" <ctrl+n> para buscar las coincidencias en el archivo y luego presione <c> para renombrar

" para agrupar una cadena de texto con cualquier símbolo ya sea: () [] {} '' ""
" debes selecionar la palabra hasta un carácter antes y presionar: <s + el-simbolo-a-usar>
" por ejemplo: <s + ">
xmap s <Plug>VSurround

" mover bloques de código seleccionado en modo VISUAL, V-LINE o V-BLOCK con <K> subes el código y con <J> lo bajas
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" mueve la posición de una línea
nnoremap n :m .-2<CR>==
nnoremap m :m .+1<CR>==

" administrar todos los snippets con <F12>
nnoremap <silent><nowait> <F12> :<C-u>CocList snippets<CR>
" actualizar extensiones
nnoremap <silent><nowait> <Leader>cup :<C-u>CocUpdate<CR>
" desintalar extensiones
nnoremap <silent><nowait> <Leader>cun :<C-u>CocUninstall coc-
