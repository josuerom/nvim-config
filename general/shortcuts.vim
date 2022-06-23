			"███████╗██╗  ██╗ ██████╗ ██████╗ ████████╗ ██████╗██╗   ██╗████████╗███████╗  ██╗   ██╗██╗███╗   ███╗
			"██╔════╝██║  ██║██╔═══██╗██╔══██╗╚══██╔══╝██╔════╝██║   ██║╚══██╔══╝██╔════╝  ██║   ██║██║████╗ ████║
			"███████╗███████║██║   ██║██████╔╝   ██║   ██║     ██║   ██║   ██║   ███████╗  ██║   ██║██║██╔████╔██║
			"╚════██║██╔══██║██║   ██║██╔══██╗   ██║   ██║     ██║   ██║   ██║   ╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
			"███████║██║  ██║╚██████╔╝██║  ██║   ██║   ╚██████╗╚██████╔╝   ██║   ███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
			"╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

" <space> es la tecla líder
let mapleader = " "

" con <F1> ejecute sus archivos (.java .py .js & .ts)
if &filetype == 'java'
   so ~/AppData/Local/nvim/init.vim<CR>
   imap <F1> <Esc> :w<CR> :!java %<CR>
   nmap <F1> :w<CR> :!java %<CR>
endif

if &filetype == 'python'
   so ~/AppData/Local/nvim/init.vim<CR>
   imap <F1> <Esc> :w<CR> :!python %<CR>
   nmap <F1> :w<CR> :!python %<CR>
endif

if &filetype == 'javascript' || &filetype == 'typescript'
   so ~/AppData/Local/nvim/init.vim<CR>
   imap <F1> <Esc> :w<CR> :!node %<CR>
   nmap <F1> :w<CR> :!node %<CR>
endif

" si la forma anterior no le funciona, eliminela y descomente
" las siguientes líneas para que pueda ejecutar sus archivos (.java .py .js & .ts)
" en modo NORMAL o INSERT
"imap <F1> <Esc> :w<CR> :!java %<CR>
"nmap <F1> :w<CR> :!java %<CR>
"imap <F2> <Esc> :w<CR> :!python %<CR>
"nmap <F2> :w<CR> :!python %<CR>
"imap <F3> <Esc> :w<CR> :!node %<CR>
"nmap <F3> :w<CR> :!node %<CR>

" para el modo NORMAL desabilito el desplazamiento con las flechas
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" salir del modo INSERT con <Esc> <Ctrl+c> o <jj>
imap <C-c> <Esc>
imap jj <Esc>

" desplazamiento vertical rápido con (hacia abajo -> ctrl+e) (hacia arriba -> ctrl+y)
nnoremap <C-k> 50 <C-e>
nnoremap <C-j> 50 <C-y>

" cambia el tamaño de pestañas verticales
nnoremap > 5<C-w>>
nnoremap < 5<C-w><

" coloca un punto y coma al final de la línea, con <space+,>
nnoremap <Leader>, $a;<Esc>

" con <space+t> abre la cmd y con <Ctrl+t> abre la powershell
nmap <Leader>t :call OpenCmd()<CR> <Esc> :resize 14<CR>
nmap <C-t> :call OpenPowerShell()<CR> <Esc>

" acceso rápido a archivos de configuración global
nmap <Leader>¿ :e ~/AppData/Local/nvim/general/shortcuts.vim<CR>
nmap <Leader>' :e ~/AppData/Local/nvim/general/plug-config.vim<CR>
nmap <Leader>0 :e ~/AppData/Local/nvim/general/plugins.vim<CR>
nmap <Leader>9 :e $MYVIMRC<CR>

" crear un archivo en una nueva pestaña, con <F4>
nnoremap <F4> :tabnew
" refresca neovim con <F5>
nmap <F5> :so ~/AppData/Local/nvim/init.vim<CR>
" copia la ruta general del archivo abierto con <F6>
nnoremap <F6>kp :let @*=expand("%")<CR>

" entre al modo goyo sin distracciones, con <F7>
nmap <F7> :Goyo<CR>
imap <F7> <Esc> :Goyo<CR>
" con <F8> refresca la ruta donde te encuentras
nmap <F8> :source %<CR>

" administrar todos los snippets con <F12>
nnoremap <silent><nowait> <F12> :<C-u>CocList snippets<CR>
" actualizar extensiones
nnoremap <silent><nowait> <Leader>cup :<C-u>CocUpdate<CR>
" desintalar extensiones
nnoremap <silent><nowait> <Leader>cun :<C-u>CocUninstall coc-

" para guardar los cambios del archivo presione <space+w> en modeo INSERT o NORMAL
nnoremap <Leader>w :w<CR>
imap <Leader>w <Esc> :w<CR>
" para cerrar búfers <space+q>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>qq :q!<CR>
" para salir rápidamente de nvim <space+x>
nnoremap <Leader>x :qa!<CR>

" abre el árbol, side bar o NERDTree
nmap <Leader>e :NERDTreeToggle<CR>
" abre arbol de nvim
nmap <Leader>p :Explore<CR>
" ejecute FZF (Fuzy Find Files)
nmap <Leader>f :FZF<CR>

" comentar por línea con <}+}>
vmap }} <plug>NERDCommenterToggle
nmap }} <plug>NERDCommenterToggle
imap }} <Esc> :w<CR> <plug>NERDCommenterToggle

" navegación rápida entre buffers abiertos
nnoremap <silent><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><C-j> :TmuxNavigateDown<CR>
noremap <silent><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><C-l> :TmuxNavigateRight<CR>

" atajos para el flujo rápido con git
nnoremap <Leader>go :GV<CR>
nnoremap <Leader>g :Git init<CR>
nnoremap <Leader>gs :Git status<CR>
nnoremap <Leader>ga :Git add -A<CR>
nnoremap <Leader>gc :Git commit -m "♻ Update"<CR>
nnoremap <Leader>gcc :Git commit -v<CR>
nnoremap <Leader>glg :Git log --oneline<CR>
nnoremap <Leader>grr :Git remote add origin https://github.com/josuerom/.git
nnoremap <Leader>gpp :Git push -u origin main<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gpu :Git push --set-upstream origin main<CR>
nnoremap <Leader>gf :Git fetch<CR>
nnoremap <Leader>gl :Git pull<CR>
nnoremap <Leader>gm :Git merge<CR>
nnoremap <Leader>ge :Git revert 

" flujo instantaneo con COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" dividir pantalla en dos [vertical] con <space+ii>
nnoremap <Leader>ii :vsplit<CR>

" navegación entre pestañas abiertas con <spacer+l> y <space+h>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
nnoremap <Leader>dl :bdelete<CR>

" búsqueda por dos carácteres con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" atajos para el gestor vim-plug
nnoremap <Leader>pi :PlugInstall<CR>
nnoremap <Leader>pc :PlugClean<CR>
nnoremap <Leader>pu :PlugUpdate<CR>
nnoremap <Leader>pp :PlugUpgrade<CR>

" indentar líneas y bloques en cualquier modo VISUAL
vnoremap < <gv
vnoremap > >gv

" para multiple cursor debe poner el cursor encima de una palabra y presionar
" <ctrl+n> para buscar las coincidencias en el archivo y luego presione <c>
" para cambiar su contenido

" para agrupar una cadena de texto con cualquier simbolo ya sea: () [] {} '' "" debes
" selecionar la palabra hasta un carácter antes y presionar: <s+el-simbolo-a-usar>
" por ejemplo: <s+[>
xmap s <Plug>VSurround

" mover bloques de código seleccionado en modo VISUAL, V-LINE o V-BLOCK con <K> subes el código y con <J> lo bajas
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" cambiar la posición de las líneas
nnoremap n :m .-2<CR>==
nnoremap m :m .+1<CR>==

" Para camiar el carácter que contenga una cadena de texto o cambiar el carácteres que los contiene,
" por ejemplo: si tienes un: 'Hi UserName' al presionar cs+el-simbolo-a-usar, la cadena de carácteres
" magicamente se cambiará sin necesidad de realizarlo manualmente.

" entrega o gatillado automatico de sugerencias - autocompletado COC
imap <silent><expr> <C-space> coc#refresh()

" Use <C-j> para saltar a los demás marcadores de posición
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <space+y> para convertir el código seleccionado en un snippet
xmap <Leader>y  <Plug>(coc-convert-snippet)
