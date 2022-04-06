".oPYo.  o    o .oPYo.  .oPYo. ooooo .oPYo. o    o ooooo .oPYo.    o     o o o     o 
"8       8    8 8    8  8   `8   8   8    8 8    8   8   8         8     8 8 8b   d8 
"`Yooo. o8oooo8 8    8 o8YooP'   8   8      8    8   8   `Yooo.    8     8 8 8`b d'8 
"    `8  8    8 8    8  8   `b   8   8      8    8   8       `8    `b   d' 8 8 `o' 8 
"     8  8    8 8    8  8    8   8   8    8 8    8   8        8     `b d'  8 8     8 
"`YooP'  8    8 `YooP'  8    8   8   `YooP' `YooP'   8   `YooP' 88   `8'   8 8     8 
":.....::..:::..:.....::..:::..::..:::.....::.....:::..:::.....:..::::..:::....::::..

let mapleader = " "

" para el modo NORMAL desabilito el desplazamiento con las flechas
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" salir del modo INSERT con <Esc> o <Ctrl+c>
imap <C-c> <Esc>

" desplazamiento vertical rápido con (hacia abajo -> ctrl+e) (hacia arriba -> ctrl+y)
nnoremap <C-k> 20 <C-e>
nnoremap <C-j> 20 <C-y>

" coloca un punto y coma al final de línea situada usando <space+,>
nnoremap <Leader>, $a;<Esc>

" ejecuta archivos .js & .ts con Nodejs
nnoremap <Leader>dd :!node %<CR>
" compila y ejecuta archivos .java
nnoremap <Leader>dj :!java %<CR>
" compila y ejecuta archivos .py
nnoremap <Leader>dp :!python %<CR>

" con <Ctrl+t> se abre la terminal cmd
nnoremap <C-t> :call OpenTerminal()<CR>

" elimina todos los espacios vacíos que hayan en el archivo con <F2>
nmap <F2> :g/^\s\+$/s/\s\+//<CR>
" actualiza nvim o reinica con <F3>
nmap <F3> :so %<CR>
" <F4> <F5> y <F6> se encuentran disponibles

" abre el archivo de configuración global con <space+ni>
" presione <F7> para abrir una terminal flotante
" con <F11> matas todas las terminales en ejecución
nnoremap <silent> <F7> :FloatermNew<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <F8> :FloatermNext<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <F9> :FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <F10> :FloatermToggle<CR>
tnoremap <silent> <F10> <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent> <F11> :FloatermKill<CR>
tnoremap <silent> <F11> <C-\><C-n>:FloatermKill<CR>

" para guardar el archivo
nnoremap <Leader>w :w<CR>
" para cerrar algun búfer o pestaña
nnoremap <Leader>q :q!<CR>
" para salir rápidamente de nvim
nnoremap <Leader>x :qa!<CR>

" abrir el árbol, side bar o NERDTree
map <Leader>e :NERDTreeToggle<CR>
map <Leader>p :Explore<CR>
map <Leader>f :Files<CR>

" navegación rápida entre buffers abiertos
nnoremap <silent><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><C-j> :TmuxNavigateDown<CR>
nnoremap <silent><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><C-l> :TmuxNavigateRight<CR>

" git
nnoremap <Leader>gg :G<CR>
nnoremap <Leader>gv :GV<CR>
nnoremap <Leader>ga :Git add -A<CR>
nnoremap <Leader>gs :Git status<CR>
nnoremap <Leader>gcc :Git commit -m "Best Update👨‍💻"<CR>
nnoremap <Leader>gc :Git commit -m "Bug 🪲"
nnoremap <Leader>go :Git log --oneline<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gf :Git fetch<CR>
nnoremap <Leader>gl :Git pull<CR>
nnoremap <Leader>gm :Git merge<CR>
nnoremap <Leader>ge :Git revert #commit

" flujo instantaneo con COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" dividir pantalla en dos [vertical] con space+i
nnoremap <Leader>ii :vsp<CR>
" dividir pantalla en dos [horizontal] con space+o
nnoremap <Leader>oo :sp<CR>
" crear un archivo en nueva pestaña con <Ctrl+n>
nnoremap <C-n> :tabnew 
" abre el archivo de configuración inicial de nvim con <space+ni>
nnoremap <Leader>ni :e $MYVIMRC<CR>

" navegación entre pestañas abiertas con <spacer+l> y <space+h>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
nmap <Leader>dl :bdelete<CR>

" atajo de búsqueda con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" indentar líneas y bloques en cualquier modo VISUAL
vnoremap < <gv
vnoremap > >gv

" para comentar una línea, presione <space+c+space> en modo NORMAL

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

" copiar ruta general del archivo abierto con <space+kp>
nnoremap <Leader>kp :let @*=expand("%")<CR>

" Use <Ctrl+space> para gatillar la entrega de sugerencias de COC
" aunque automaticamente siempre se gatilla
"if &filetype == 'java' || &filetype == 'javascript'
"  inoremap <c-space> <C-x><C-u>
"else
  inoremap <silent><expr> <C-space> coc#refresh()
  imap <silent><expr> <C-space> coc#refresh()
"endif

" con las feclas ajustas el tamaño de las pestañas
nnoremap <silent> <right> :vertical resize +2<CR>
nnoremap <silent> <left> :vertical resize -2<CR>
nnoremap <silent> <up> :vertical resize +2<CR>
nnoremap <silent> <down> :vertical resize -2<CR>

" acceso rápido a las funcionalidades de CocList
nnoremap <silent><nowait> <space>cex  :<C-u>CocList extensions<CR>
" administrar snippets
nnoremap <silent><nowait> <space>csn  :<C-u>CocList snippets<CR>
" actualizar extensiones
nnoremap <silent><nowait> <space>cuu  :<C-u>CocUpdate<CR>
" desintalar extensiones
nnoremap <silent><nowait> <space>cdd  :<C-u>CocUninstall coc-

" configuration for the suggerences of coc-snippets
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
xmap <Leader>y  <Plug>(coc-convert-snippet)
"*--------------------------------------------------------------------------------*
