let mapleader = " "

" para el modo NORMAL las flechas no funcionarán
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" salir del modo INSERT con <Esc> o <ii>
imap ii <Esc>

" desplazamiento vertical rápido con (hacia abajo -> ctrl+e) (hacia arriba -> ctrl+y)
nnoremap <C-k> 10 <C-e>
nnoremap <C-j> 10 <C-y>

" con <space+cm> comentas la línea en la que se encuentre el cursor en modo NORMAL
"lua require('nvim_comment').setup({line_mapping="<leader>cl", operator_mapping="<leader>cm"})

" coloca un punto y coma al final de línea situada usando (space+,)
nnoremap <Leader>, $a;<Esc>

" ejecuta archivos .js & .ts con Nodejs
nnoremap <Leader>dd :!node %<CR>
" compila y ejecuta archivos .java
nnoremap <Leader>dj :!java %<CR>
" compila y ejecuta archivos .py
nnoremap <Leader>dp :!python %<CR>

" con space+t abre la terminal cmd
vnoremap <Leader>t :call OpenTerminal()<CR>
nnoremap <Leader>t :call OpenTerminal()<CR>
imap trm <Esc> :call OpenTerminal()<CR>

" para guardar archivos
nnoremap <Leader>w :w<CR>
" para cerrar algun búfer o pestaña
nnoremap <Leader>q :q!<CR>
" para salir rápidamente de nvim
nnoremap <Leader>x :qa!<CR>

" abrir el árbol, side bar o NERDTree
map <Leader>e :NERDTreeToggle<CR>
map <Leader>p :Explore<CR>
" encuentrar archivos usando el azúcar de línea Telescope
nnoremap <Leader>f <cmd>Telescope find_files<CR>
nnoremap <Leader>fl <cmd>Telescope live_grep<CR>
nnoremap <Leader>fb <cmd>Telescope buffers<CR>
nnoremap <Leader>fh <cmd>Telescope help_tags<CR>
nnoremap <Leader>fg <cmd>Telescope git_status<CR>
nnoremap <Leader>fc <cmd>Telescope command_history<CR>

" navegación rápida entre buffers abiertos
nnoremap <silent><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><C-j> :TmuxNavigateDown<CR>
nnoremap <silent><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><C-l> :TmuxNavigateRight<CR>

" dividir pantalla en dos [vertical] con space+i
nnoremap <Leader>i :vsp<CR>
" dividir pantalla en dos [horizontal] con space+o
nnoremap <Leader>o :sp<CR>

" elimina todos los espacios vacíos que hayan en el archivo con <F3>
nnoremap <F3> :g/^\s\+$/s/\s\+//<CR>
" crea un nuevo archivo en la ruta posicionada <Ctrl+n>
nnoremap <C-n> :tabnew 
" actualiza la configuración de neovim o reinicialo con <Ctrl+r>
nmap <C-r> :so ~/AppData/Local/nvim/init.vim<CR>
" abre el archivo de configuración global con <space+ini>
nnoremap <Leader>ini :e $MYVIMRC<CR>

" navegación entre pestañas abiertas con <Tab> y <>
nnoremap <silent><TAB> :bnext<CR>
nnoremap <silent><S-TAB> :bprevious<CR>
" eliminar pestaña con <space+dl>
nmap <Leader>dl :bdelete<CR>

" atajo de búsqueda con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" indentar líneas y bloques en cualquier modo VISUAL
vnoremap < <gv
vnoremap > >gv

" seleccionar palabras iguales del archivo con: ctrl+n
" con shift+v seleccionas toda la línea

" para agrupar una cadena de texto con cualquier simbolo ya sea: () [] {} '' "" debes
" selecionar la palabra hasta un carácter antes y presionar: <s+el-simbolo-a-usar>
xmap s <Plug>VSurround

" mover bloques de código seleccionado en modo VISUAL, V-LINE o V-BLOCK con <K> subes el código y con <J> lo bajas
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" subir la posición de la línea
nnoremap n :m .-2<CR>==
" bajar de posición de la línea
nnoremap m :m .+1<CR>==

" Para camiar el caráctere que tenga una cadena de texto o cambiar el carácter que
" los contiene, por ejemplo: si tienes un: 'Hi User' al presionar cs+el-simbolo-a-usar, la cadena de caracteres
" magicamente se cambiará sin necesidad de entrar en el modo INSERT.

" copiar ruta general del archivo posicionado
nnoremap <Leader>kp :let @*=expand("%")<CR>

"*----------------------- OTRAS FUNCIONALIDADES DE COC -----------------------*
" flujo instantaneo con COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use <TAB> para saltar al siguiente marcador de posición
let g:coc_snippet_next = '<TAB>'
" use <SHIFT-TAB> para saltar al marcador de posición anterior
let g:coc_snippet_prev = '<S-TAB>'

" Use <Ctrl+space> para gatillar la entrega de sugerencias del autocompletado de KITE,
" aunque el automaticamente se gatilla
if &filetype == 'java' || &filetype == 'javascript'
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" con las feclas ajustas el tamaño del búfer's abiertos
nnoremap <silent> <right> :vertical resize +2<CR>
nnoremap <silent> <left> :vertical resize -2<CR>
nnoremap <silent> <up> :vertical resize +2<CR>
nnoremap <silent> <down> :vertical resize -2<CR>

" acceso rápido a las funcionalidades de CoCList, administrador de extensiones
nnoremap <silent><nowait> <space>coc  :<C-u>CocList extensions<CR>
" administrar snippets
nnoremap <silent><nowait> <space>csn  :<C-u>CocList snippets<CR>
