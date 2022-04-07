".oPYo.  o    o .oPYo.  .oPYo. ooooo .oPYo. o    o ooooo .oPYo.    o     o o o     o 
"8       8    8 8    8  8   `8   8   8    8 8    8   8   8         8     8 8 8b   d8 
"`Yooo. o8oooo8 8    8 o8YooP'   8   8      8    8   8   `Yooo.    8     8 8 8`b d'8 
"    `8  8    8 8    8  8   `b   8   8      8    8   8       `8    `b   d' 8 8 `o' 8 
"     8  8    8 8    8  8    8   8   8    8 8    8   8        8     `b d'  8 8     8 
"`YooP'  8    8 `YooP'  8    8   8   `YooP' `YooP'   8   `YooP' 88   `8'   8 8     8 
":.....::..:::..:.....::..:::..::..:::.....::.....:::..:::.....:..::::..:::....::::..

let mapleader = " "

" para el modo NORMAL desabilito el desplazamiento con las flechas
" para usar los carácteres <h, j, k & l>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" salir del modo INSERT con <Esc> <Ctrl+c> o <k+j>
imap <C-c> <Esc>
imap kj <Esc>

" desplazamiento vertical rápido con (hacia abajo -> ctrl+e) (hacia arriba -> ctrl+y)
nnoremap <C-k> 35 <C-e>
nnoremap <C-j> 35 <C-y>

" coloca un punto y coma al final de la línea, con <space+,>
nnoremap <Leader>, $a;<Esc>

" ejecuta archivos .js & .ts con Nodejs
nnoremap <Leader>dd :!node %<CR>
" compila y ejecuta archivos .java
nnoremap <Leader>dj :!java %<CR>
" compila y ejecuta archivos .py
nnoremap <Leader>dp :!python %<CR>

" con <Ctrl+t> se abre la terminal
nnoremap <C-t> :call OpenTerminal()<CR>

" eliminar todos los espacios vacíos que hayan en el archivo con <F1>
nmap <silent> <F1> :g/^\s\+$/s/\s\+//<CR>
" reinicia neovim con <F2>
nmap <F2> :so %<CR>
" abre el archivo de configuración inicial con <F3>
nnoremap <F3> :e $MYVIMRC<CR>
" crear un archivo en una nueva pestaña, con <F4>
nnoremap <F4> :tabnew 

" <F10> <F11> y <F12> se encuentran disponibles

" presione <F5> para abrir una terminal flotante en el centro de la pantalla
" con <F9> matas todas las terminales en ejecución y demás
nnoremap <silent> <F5> :FloatermNew<CR>
tnoremap <silent> <F5> <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <F6> :FloatermNext<CR>
tnoremap <silent> <F6> <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <F7> :FloatermPrev<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <F8> :FloatermToggle<CR>
tnoremap <silent> <F8> <C-\><C-n>:Floaterm<CR>
nnoremap <silent> <F9> :FloatermKill<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermKill<CR>

" para guardar el archivo <space+w>
nnoremap <Leader>w :w<CR>
" para cerrar algun búfer o pestaña <space+q>
nnoremap <Leader>q :q!<CR>
" para salir rápidamente de nvim <space+x>
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

" atajos para git
nnoremap <Leader>gg :G<CR>
nnoremap <Leader>gv :GV<CR>
nnoremap <Leader>gy :Git init<CR>
nnoremap <Leader>gs :Git status<CR>
nnoremap <Leader>ga :Git add -A<CR>
nnoremap <Leader>gc :Git commit -m "New change👨‍💻"<CR>
nnoremap <Leader>gcc :Git commit -m "Solution to an bug 🪲"
nnoremap <Leader>grr :Git remote add origin https://github.com/josuerom/.git
nnoremap <Leader>gpp :Git push -u origin main<CR>
nnoremap <Leader>go :Git log --oneline<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gf :Git fetch<CR>
nnoremap <Leader>gl :Git pull<CR>
nnoremap <Leader>gm :Git merge<CR>
nnoremap <Leader>ge :Git revert 

" flujo instantaneo con COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" dividir pantalla en dos [vertical] con space+i
nnoremap <Leader>ii :vsp<CR>
" dividir pantalla en dos [horizontal] con space+o
nnoremap <Leader>oo :sp<CR>

" navegación entre pestañas abiertas con <spacer+l> y <space+h>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
nmap <Leader>dl :bdelete<CR>

" atajo de búsqueda con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" atajos para el gestor vim-plug
nnoremap <Leader>pi :PlugInstall<CR>
nnoremap <Leader>pc :PlugClean<CR>
nnoremap <Leader>pu :PlugUpdate<CR>
nnoremap <Leader>pg :PlugUpgrade<CR>

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

" entrega de sugerencias automatica de COC
imap <silent><expr> <C-space> coc#refresh()

" con las feclas ajustas el tamaño de las pestañas
nnoremap <silent> <right> :vertical resize +2<CR>
nnoremap <silent> <left> :vertical resize -2<CR>
nnoremap <silent> <up> :vertical resize +2<CR>
nnoremap <silent> <down> :vertical resize -2<CR>

" acceso rápido a las funcionalidades de CocList
nnoremap <silent><nowait> <Leader>ca :<C-u>CocList extensions<CR>
" administrar snippets
nnoremap <silent><nowait> <Leader>cs :<C-u>CocList snippets<CR>
" actualizar extensiones
nnoremap <silent><nowait> <Leader>cu :<C-u>CocUpdate<CR>
" desintalar extensiones
nnoremap <silent><nowait> <Leader>ci :<C-u>CocUninstall coc-

" Use <C-j> para saltar al siguiente marcador de posición
let g:coc_snippet_next = '<C-j>'
" Use <C-k> para saltar al marcador de posición anterior
let g:coc_snippet_prev = '<C-k>'

" Use <C-j> para saltar a los demás marcadores de posición
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <space+y> para convertir el código visual seleccionado en un fragmento
xmap <Leader>y  <Plug>(coc-convert-snippet)

"*--------------------------------------------------------------------------------*
