" .oPYo. o     o    o .oPYo. o o    o .oPYo.     .oPYo. .oPYo. o    o  ooooo o .oPYo.    o     o o o     o 
" 8    8 8     8    8 8    8 8 8b   8 8          8    8 8    8 8b   8  8     8 8    8    8     8 8 8b   d8 
" 8YooP' 8     8    8 8      8 8`b  8 `Yooo.     8      8    8 8`b  8 o8oo   8 8         8     8 8 8`b d'8 
" 8      8     8    8 8   oo 8 8 `b 8     `8 ooo 8      8    8 8 `b 8  8     8 8   oo    `b   d' 8 8 `o' 8 
" 8      8     8    8 8    8 8 8  `b8      8     8    8 8    8 8  `b8  8     8 8    8     `b d'  8 8     8 
" 8      8oooo `YooP' `YooP8 8 8   `8 `YooP'     `YooP' `YooP' 8   `8  8     8 `YooP8 88   `8'   8 8     8 
":..:::::......:.....::..... ....:::..:.....::::::.....::.....:..:::..:..::::..:..... ..::::..:::....::::..

" configuración de la barra de estado inferioir
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch', 'cocstatus']]
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
      \   'kitestatus': 'kite#statusline',
      \   'cocstatus': 'coc#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

" si usted utiliza el autocompletado KITE descomente la sgt línea y agregue el
" lenguaje que desea.
"let g:kite_supported_languages = ['lenguaje']
let g:coc_global_extensions = ['coc-snippets', 'coc-tsserver', 'coc-java']

" configuración de ultisnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/AppData/Local/nvim/UltiSnips']
"let g:UltiSnipsListSnippets="<C-,>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" cerrado automatico de la barra lateral o árbol
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='~'

" navegación con tmux
let g:tmux_navigator_no_mappings=1

" ajustes para vim-fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" configuración para la funcionalidad vim-floaterm
let g:floaterm_keymap_new = '<F5>'
let g:floaterm_keymap_next = '<F6>'
let g:floaterm_keymap_prev = '<F7>'
let g:floaterm_keymap_toggle = '<F8>'
let g:floaterm_keymap_kill = '<F9>'


" Cursor up search in FZF(Line Fuzzy Finder)
let $FZF_DEFAULT_OPTS='--layout=reverse'

"*--------------------------- FUNCIÓN QUE INTEGRA LA TERMINAL DENTRO DE NVIM -------------------------------*
function! OpenTerminal()
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

"*---------------------- SOLUCIÓN A EL ERROR DE COC-SNIPPETS -----------------------*
" Si al iniciar neovim te aparece siempre este molestoso error:
" [coc.nvim] Error on execute :pyx command, ultisnips feature of coc-snippets requires pyx support on vim. use :CocOpenLog for details
" ejecuta el sgt comando en la PowerShell como administrador: pip install pynvim
" así no deberá aparecerte más.

"*---------------------- CONFIGURACIÓN SENCILLA DE COC, LA DEJO EN INGLES ---_----------------------*
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.6.1") || has("patch-8.1.1564")
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
let g:coc_snippet_next = '<TAB>'

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
