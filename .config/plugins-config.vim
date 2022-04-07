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

" si usted utiliza el autocompletado KITE descomente las dos sgt líneas
"let g:kite_auto_complete = 1
"let g:kite_supported_languages = ['lenguaje']
let g:coc_global_extensions = ['coc-snippets', 'coc-tsserver', 'coc-java']

" cuándo este utilizando KITE desabilite la entrega de sugerencias de COC, descomente la sgt línea:
"autocmd FileType <lenguaje-aquí> let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

" cerrado automatico de la barra lateral o árbol
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'

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
"let g:fzf_layout = { 'window': 'call FloatingFZF()' }
"function! FloatingFZF()
  "let buf = nvim_create_buf(v:false, v:true)
  "call setbufvar(buf, '&signcolumn', 'no')
  "let height = float2nr((&lines - 3) / 2)
  "let width = float2nr(&columns - (&columns * 2 / 10))
  "let col = float2nr((&columns - width) / 2)
  "let row = float2nr((&lines - height) / 2)
  "let opts = {
        "\ 'relative': 'editor',
        "\ 'row': row,
        "\ 'col': col,
        "\ 'width': width,
        "\ 'height': height
        "\ }
  "call nvim_open_win(buf, v:true, opts)
"endfunction

"function! SearchPatternInFile(pattern)
    "" Save cursor position.
    "let save_cursor = getcurpos()

    "" Set cursor position to beginning of file.
    "call cursor(0, 0)

    "" Search for the string 'hello' with a flag c.  The c flag means that a
    "" match at the cursor position will be accepted.
    "let search_result = search(a:pattern, "c")

    "" Set the cursor back at the saved position.  The setpos function was
    "" used here because the return value of getcurpos can be used directly
    "" with it, unlike the cursor function.
    "call setpos('.', save_cursor)

    "" If the search function didn't find the pattern, it will have
    "" returned 0, thus it wasn't found.  Any other number means that an instance
    "" has been found.
    "return search_result
"endfunction

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

" Formatting selected code.
xmap <Leader>fr <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
