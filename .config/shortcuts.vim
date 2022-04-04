let mapleader = " "

" para el modo NORMAL las flechas no funcionarán
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" salir del modo INSERT con <Esc> o <Ctrl+c>
imap <C-c> <Esc>

" desplazamiento vertical rápido con (hacia abajo -> ctrl+e) (hacia arriba -> ctrl+y)
nnoremap <C-k> 10 <C-e>
nnoremap <C-j> 10 <C-y>

" coloca un punto y coma al final de línea situada usando (space+,)
nnoremap <Leader>, $a;<Esc>

" ejecuta archivos .js & .ts con Nodejs
nnoremap <Leader>dd :!node %<CR>
" compila y ejecuta archivos .java
nnoremap <Leader>dj :!java %<CR>
" compila y ejecuta archivos .py
nnoremap <Leader>dp :!python %<CR>

" con space+t abre la terminal cmd
vnoremap <C-t> :call OpenTerminal()<CR>
nnoremap <C-t> :call OpenTerminal()<CR>
imap trm <Esc> :w <Esc> :call OpenTerminal()<CR>

" para guardar archivos
nnoremap <Leader>w :w<CR>
" para cerrar algun búfer o pestaña
nnoremap <Leader>q :q!<CR>
" para salir rápidamente de nvim
nnoremap <Leader>x :qa!<CR>

" abrir el árbol, side bar o NERDTree
map <Leader>e :NERDTreeToggle<CR>
map <Leader>ee :NERDTreeFind<CR>
map <Leader>p :Files<CR>

" navegación rápida entre buffers abiertos
nnoremap <silent><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><C-j> :TmuxNavigateDown<CR>
nnoremap <silent><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><C-l> :TmuxNavigateRight<CR>

" git
nnoremap <Leader>g :G<CR>
nnoremap <Leader>ga :Git add<CR>
nnoremap <Leader>gs :Git status<CR>
nnoremap <Leader>gc :Git commit -m "Best Update👨‍💻"<CR>
nnoremap <Leader>glg :Git log --oneline<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gf :Git fetch<CR>
nnoremap <Leader>gl :Git pull<CR>
nnoremap <Leader>gm :Git merge<CR>
nnoremap <Leader>gr :Git revert 

" dividir pantalla en dos [vertical] con space+i
nnoremap <Leader>ii :vsp<CR>
" dividir pantalla en dos [horizontal] con space+o
nnoremap <Leader>oo :sp<CR>

" elimina todos los espacios vacíos que hayan en el archivo con <F3>
nnoremap <F3> :g/^\s\+$/s/\s\+//<CR>
" crea un nuevo archivo en la ruta posicionada <Ctrl+n>
nnoremap <C-n> :tabnew 
" actualiza la configuración de neovim o reinicialo con <Ctrl+r>
nmap <C-r> :so ~/AppData/Local/nvim/init.vim<CR>
" abre el archivo de configuración global con <space+ini>
nnoremap <Leader>ni :e $MYVIMRC<CR>

" navegación entre pestañas abiertas con <spacer+l> y <space+a>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
nmap <Leader>dl :bdelete<CR>

" atajo de búsqueda con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" indentar líneas y bloques en cualquier modo VISUAL
vnoremap < <gv
vnoremap > >gv

" para comentar alguna línea, debe presionar <space+c+space> en modo NORMAL

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

" subir la posición de la línea
nnoremap n :m .-2<CR>==
" bajar de posición de la línea
nnoremap m :m .+1<CR>==

" Para camiar el carácter que contenga una cadena de texto o cambiar el carácteres que los contiene,
" por ejemplo: si tienes un: 'Hi User Name' al presionar cs+el-simbolo-a-usar, la cadena de carácteres
" magicamente se cambiará sin necesidad de realizarlo manualmente.

" copiar ruta general del archivo abierto
nnoremap <Leader>kp :let @*=expand("%")<CR>

"*----------------------- OTRAS FUNCIONALIDADES DE COC -----------------------*
" flujo instantaneo con COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <Ctrl+space> para gatillar la entrega de sugerencias del autocompletado de KITE o COC
" aunque el automaticamente se gatilla
"if &filetype == 'java' || &filetype == 'javascript'
"  inoremap <c-space> <C-x><C-u>
"else
  inoremap <silent><expr> <c-space> coc#refresh()
"endif

" con las feclas ajustas el tamaño del búfer's abiertos
nnoremap <silent> <right> :vertical resize +2<CR>
nnoremap <silent> <left> :vertical resize -2<CR>
nnoremap <silent> <up> :vertical resize +2<CR>
nnoremap <silent> <down> :vertical resize -2<CR>

"*------------------------------ COC-SNIPPETS -----------------------------------*
" acceso rápido a las funcionalidades de CoCList, administrador de extensiones
nnoremap <silent><nowait> <space>coc  :<C-u>CocList extensions<CR>
" administrar snippets
nnoremap <silent><nowait> <space>csn  :<C-u>CocList snippets<CR>

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<C-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<C-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <leader>x for convert visual selected code to snippet
xmap <Leader>x  <Plug>(coc-convert-snippet)

"*--------------------------------------------------------------------------------*

