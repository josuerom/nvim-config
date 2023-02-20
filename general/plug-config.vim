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

" si usted utiliza el autocompletado KITE descomente las siguientes líneas
let g:kite_supported_languages = ['javascript', 'python', 'java']
" desabilitar la entrega de sugerencias de COC para que KITE sea quien las entrege en estos tipos de archivos
autocmd FileType javascript let b:coc_suggest_disable=1
autocmd FileType python let b:coc_suggest_disable=1
autocmd FileType java let b:coc_suggest_disable=1

let g:coc_global_extensions = [
  \ 'coc-snippets'
  \]

" configuración de UltiSnips
let g:UltiSnipsSnippetDirectories=['$HOME/AppData/Local/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

" cerrado automatico de la barra lateral o tree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1

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
     " línea (81) así: execute 'sp term://zsh'
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
     " línea (81) así: execute 'sp term://zsh'
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

"*------------------------- SOLUCIÓN PARA LOS ERRORES MÁS COMUNES --------------------------*
" Si al iniciar neovim te aparece siempre este molestoso error:
" [coc.nvim] Error on execute :pyx command, ultisnips feature of coc-snippets requires pyx support on vim.
" ejecuta el sgt comando en tu terminal como administrador, pero antes debes tener instalado Python.
" comando: pip install pynvim
" así no deberá aparecerte más. Si aparece otro error consulta en StackOverFlow o comuniqueme lo directamente.
" RECUERDA: Entre más grande se la configuración que le des a Neovim, será más lento, así que optimiza.
