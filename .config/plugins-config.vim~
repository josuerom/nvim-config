" configuración de la barra de estado Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

" si utilizas el autocompletado KITE descomenta la sgt línea
"let g:kite_supported_languages = ['nombre-de-los-lenguajes']
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-tsserver'
    \ ]
" si requieres obtener otras extensiones de autocompletado visita el
" repositorio en github: https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions 

" cerrar automaticamente la barra lateral o árbol
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" configuración para UltiSnips. No use<tab> si usa https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'~/AppData/Local/nvim/UltiSnips']
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpForwardTrigger="<C-b"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" navegación con tmux
let g:tmux_navigator_no_mappings=1

"*---------------------------- SOLUCIÓN CONTRA EL ERROR [coc.nvim] ----------------------------*
" TE APARECE ÉSTE ERROR CADA VEZ QUE ABRES NVIM.
" [coc.nvim] Error on execute python script: request error nvim_command - Vim(py3file):
" E319: No 'python' provider found. Run ':checkhealth provider'

" Ese error aparece porque tenemos instalado el complemento: Plug 'neoclide/coc.nvim' que es muy especial
" para el autocompletado; el requiere para su funcionamiento derivados host de Python, dicho de otra manera,
" el sin Python instalado en el PC no será tan eficiente, ¡Si aún no tienes Python ve a instalarlo de su pagína oficial!
" enlace: https://www.python.org/downloads/

" Añade la siguiente ruta del host Python, al final del archivo [init.vim], así se solucionará el molesto error:
" let g:python3_host_prog = 'D:\Program Files\Python\Python310\python.exe'
 
"*-----------------------------------------------------------------------------------------------*

" si llegas a instalar [vim-devicons], debes instalar un fuente especifica como lo pueden ser [Hack Mono NertFont,
" JetBrains Mono, Nert Font, etc] y añadir éstas 3 líneas de codigo al archivo para que así puedas ver los iconos en el árbol lateral y no símbolos extraños.
" if exists("g:loaded_webdevicons")
"  call webdevicons#refresh()
"endif

" función para poder abrir la terminal dentro de nvim
function! OpenTerminal()
  " mover al búfer hacia la derecha
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " cerrar terminal existente
    execute "q"
  else
    " se abrirá la terminal cmd, pero si usted utiliza otra terminal, debes
    " poner el nombre del .exe o ejecutable ya sea: 'zsh, bash, iTerm', quedando la
    " línea (81) así: execute 'vsp term://zsh'
    execute "vsp term://cmd"

    " apagar números
    execute "set nonu"
    execute "set nornu"

    " alternar insertar en entrar o salir
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " establezco atajos dentro de la terminal
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction

"*------------------------- CONFIGURACIÓN DE COC -------------------------*
" TextEdit puede fallar si no se establece en oculto.
set hidden

" algunos servidores tienen problemas con los archivos de respaldo, consulte con #649.
set nobackup
set nowritebackup

" dar más espacio a barra inferior de comandos.
set cmdheight=1

" tiempo de actualización más largo (el valor predeterminado es 4000ms 4s) genera
" retrasos y mala experiencia de usuario.
set updatetime=300

" no pasará mensajes a |ins-completion-menu|
set shortmess+=c

" muestre siempre la columna del letrero; de lo contrario, el texto cambiaría cada vez
if has("nvim-0.5.0") || has("patch-8.1.1564") 
" recientemente, vim puede fusionar columna de signo y columna de número en una
  set signcolumn=number
else
  set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

augroup mygroup
  autocmd!
  " configure los tipos de archivo especificados en formatexpr.
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " actualizar la ayuda de la firma en el marcador de posición de salto.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

"Agregar comando`: Format` para formatear el búfer actual.
command! -nargs=0 Format :call CocAction('format')
"Agregar`: comando Doblar` para doblar el búfer actual.
command! -nargs=? Fold :call CocAction('fold', <f-args>)
"Agregar comando`: OR` para organizar las importaciones del búfer actual.
command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')

" Config Explorer Files Inter
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }
