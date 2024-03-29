"██████╗ ██╗     ██╗   ██╗ ██████╗        ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗   ██╗   ██╗██╗███╗   ███╗
"██╔══██╗██║     ██║   ██║██╔════╝       ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝   ██║   ██║██║████╗ ████║
"██████╔╝██║     ██║   ██║██║  ███╗█████╗██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗  ██║   ██║██║██╔████╔██║
"██╔═══╝ ██║     ██║   ██║██║   ██║╚════╝██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"██║     ███████╗╚██████╔╝╚██████╔╝      ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝     ╚══════╝ ╚═════╝  ╚═════╝        ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

" configuración de la barra de estado inferior
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

" si usted utiliza el autocompletado KITE descomente la siguiente línea
"let g:kite_supported_languages = ['javascript', 'python', 'java']

" desabilita la entrega de sugerencias de COC para que KITE sea quien las entrege para tus lenguajes
"autocmd FileType java let b:coc_suggest_disable=1

let g:coc_global_extensions = [ 'coc-snippets' ]

" configuración de coc-snippets
let g:coc_snippets_next = '<c-j>'
let g:coc_snippets_prev = '<c-k>'
imap <C-l> <Plug>(coc-snippets-expand)
imap <C-j> <Plug>(coc-snippets-expand-jump)
xmap <Leader>csn  <Plug>(coc-convert-snippet)

" configuración de la barra lateral o árbol de archivos
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos="right"

" navegación rápida tmux
let g:tmux_navigator_no_mappings=1

" interfaz de búsqueda FZF (Line Fuzzy Finder)
let $FZF_DEFAULT_OPTS='--layout=reverse'

"*------------------ FUNCIÓNES PARA INTEGRAR LAS TERMINALES DE WINDOWS ---------------------*
function! OpenCmd()
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
     " poner el nombre del .exe o ejecutable ya sea: 'cmd, zsh, bash, iTerm', quedando la
     " línea (81) así: execute 'sp term://powershell'
     execute "sp term://cmd"
     " apagar números
     execute "set nonu"
     execute "set nornu"

     " alternar insertar en entrar o salir
     silent au BufLeave <buffer> stopinsert!
     silent au BufWinEnter,WinEnter <buffer> startinsert!

     " establezco atajos dentro de la terminal
     execute "tnoremap <buffer> <Esc> <C-\\><C-n><C-w><C-h>"
     execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
     execute "tnoremap <buffer> <C-7> <C-\\><C-\\><C-n>"
     startinsert!
   endif
endfunction

function! OpenPowerShell()
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
     " poner el nombre del .exe o ejecutable ya sea: 'cmd, zsh, bash, iTerm', quedando la
     " línea (81) así: execute 'sp term://cmd'
     execute "vsp term://powershell"
     " apagar números
     execute "set nonu"
     execute "set nornu"

     " alternar insertar en entrar o salir
     silent au BufLeave <buffer> stopinsert!
     silent au BufWinEnter,WinEnter <buffer> startinsert!

     " establezco atajos dentro de la terminal
     execute "tnoremap <buffer> <Esc> <C-\\><C-n><C-w><C-h>"
     execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
     execute "tnoremap <buffer> <C-7> <C-\\><C-\\><C-n>"
     startinsert!
   endif
endfunction

"*------------------------- SOLUCIÓN DEL ERROR MÁS COMUNES EN NEOVIM --------------------------*
" Si al iniciar neovim te aparece siempre este molestoso error:
" [coc.nvim] Error on execute :pyx command, ultisnips feature of coc-snippets requires pyx support on vim.
" EJECUTA el sgt comando en tu terminal como administrador, pero antes debes tener instalado python y pip.
" comando -> pip install pynvim
" así no deberá aparecer más. Si aparece otro error consulta en StackOverFlow o comuniqueme lo directamente.
" RECUERDE: Entre más grande se la configuración que le agregues a neovim, más lento se volverá, así que optimiza.
