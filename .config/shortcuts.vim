let mapleader = " "

" para el modo NORMAL desabilito el desplazamiento con las flechas
" para usar los carácteres <h, j, k & l>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" salir del modo INSERT con <Esc> <Ctrl+c> o <jj>
imap <C-c> <Esc>
imap jj <Esc>

" desplazamiento vertical rápido con (hacia abajo -> ctrl+e) (hacia arriba -> ctrl+y)
nnoremap <C-k> 35 <C-e>
nnoremap <C-j> 35 <C-y>

" coloca un punto y coma al final de la línea, con <space+,>
nnoremap <Leader>, $a;<Esc>

" ejecuta archivos .js & .ts con Nodejs
nnoremap <Leader>dn :!node %<CR>
" compila y ejecuta archivos .java
nnoremap <Leader>dj :!java %<CR>
" compila y ejecuta archivos .py
nnoremap <Leader>dp :!python %<CR>

" con <Ctrl+t> abre las cmd y con <space+t> se abre la PowerShell
nmap <Leader>t :call OpenCmd()<CR> <Esc> :resize 13<CR>
nmap <C-t> :call OpenPowerShell()<CR> <Esc> :resize 13<CR>

" acceso rápido a archivos de configuración global
nmap <Leader>¿ :e ~/AppData/Local/nvim/.config/shortcuts.vim<CR>
nmap <Leader>' :e ~/AppData/Local/nvim/.config/plug-config.vim<CR>
nmap <Leader>0 :e ~/AppData/Local/nvim/.config/plugins.vim<CR>

" eliminar todos los espacios vacíos que hayan en el archivo con <F1>
"nmap <F1> :g/^\s\+$/s/\s\+//<CR>
" reinicia neovim con <F2>
nmap <F2> :so %<CR>
" abre el archivo de configuración inicial con <F3>
nnoremap <F3> :e $MYVIMRC<CR>
" crear un archivo en una nueva pestaña, con <F4>
nnoremap <F4> :tabnew 

" copia la ruta general del archivo abierto con <F10>
nnoremap <F10>kp :let @*=expand("%")<CR>
" eliminar todos los espacios en blanco que tenga el archivo <c+s>
nnoremap <Leader>cs :%s/\s\+$//e<CR>

" modo goyo sin distracciones
nmap <F11> :Goyo<CR>
imap <F11> <Esc> :Goyo<CR>

"para guardar el archivo <space+w>
nnoremap <Leader>w :w<CR>
" para cerrar algun búfer o pestaña <space+q>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
" para salir rápidamente de nvim <space+x>
nnoremap <Leader>x :qa!<CR>

" abrir el árbol, side bar o NERDTree
nmap <Leader>e :NERDTreeToggle<CR>
nmap <Leader>p :Explore<CR>
nmap <Leader>f :FZF<CR>

" comentar líneas con <}+}> o con <space+c+space>
vmap }} <plug>NERDCommenterToggle
nmap }} <plug>NERDCommenterToggle
imap }} <Esc> <plug>NERDCommenterToggle

" navegación rápida entre buffers abiertos
nnoremap <silent><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><C-j> :TmuxNavigateDown<CR>
noremap <silent><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><C-l> :TmuxNavigateRight<CR>

" atajos para git
nnoremap <Leader>gg :G<CR>
nnoremap <Leader>go :GV<CR>
nnoremap <Leader>gy :Git init<CR>
nnoremap <Leader>gs :Git status<CR>
nnoremap <Leader>ga :Git add -A<CR>
nnoremap <Leader>gc :Git commit -m "🔧 Best change👨‍💻"<CR>
nnoremap <Leader>gcc :Git commit -m "Bug 🪲🔧"
nnoremap <Leader>grr :Git remote add origin https://github.com/josuerom/.git
nnoremap <Leader>gpp :Git push -u origin main<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gf :Git fetch<CR>
nnoremap <Leader>gl :Git pull<CR>
nnoremap <Leader>gm :Git merge<CR>
nnoremap <Leader>ge :Git revert #commit

" flujo instantaneo con COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" dividir pantalla en dos [vertical] con space+i
nnoremap <Leader>ii :vsplit<CR>
" dividir pantalla en dos [horizontal] con space+o
nnoremap <Leader>oo :split<CR>

" navegación entre pestañas abiertas con <spacer+l> y <space+h>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
nmap <Leader>dl :bdelete<CR>

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
" por ejemplo: si tienes un: 'Hi User Name' al presionar cs+el-simbolo-a-usar, la cadena de carácteres
" magicamente se cambiará sin necesidad de realizarlo manualmente.

" entrega de sugerencias automatica de COC
imap <silent><expr> <C-space> coc#refresh()

" con las feclas ajustas el tamaño de las pestañas
nnoremap <silent> <right> :vertical resize +2<CR>
nnoremap <silent> <left> :vertical resize -2<CR>
nnoremap <silent> <up> :vertical resize +2<CR>
nnoremap <silent> <down> :vertical resize -2<CR>

" administrar todos los snippets con <F12>
nnoremap <silent><nowait> <F12> :<C-u>CocList snippets<CR>
" actualizar extensiones
nnoremap <silent><nowait> <Leader>cuu :<C-u>CocUpdate<CR>
" desintalar extensiones
nnoremap <silent><nowait> <Leader>cii :<C-u>CocUninstall coc-

" Use <C-j> para saltar al siguiente marcador de posición
let g:coc_snippet_next = '<C-j>'
" Use <C-k> para saltar al marcador de posición anterior
let g:coc_snippet_prev = '<C-k>'

" Use <C-j> para saltar a los demás marcadores de posición
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <space+y> para convertir el código visual seleccionado en un fragmento
xmap <Leader>y  <Plug>(coc-convert-snippet)
