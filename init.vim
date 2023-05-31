"*----------------------- Configuración Inicial [init.vim] 21/Febrero/2021 8:23a.m COL -----------------------*

"									 						██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"									 						██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
" 														██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
" 														██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
" 														██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║
" 														╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
" 																					Creador >> josuerom
" 																Twitter >> https://twitter.com/josueromr

" importo los archivos configuración
so ~/AppData/Local/nvim/general/plugins.vim
so ~/AppData/Local/nvim/general/plug-config.vim
so ~/AppData/Local/nvim/general/shortcuts.vim

syntax enable
set number
set mouse=a
set numberwidth=1
set relativenumber
set clipboard=unnamedplus
set background=dark
set ruler
set sw=3
set termguicolors
set showmatch
set showcmd
set noshowmode
set laststatus=2
set hlsearch
set ignorecase
set smartcase
set splitbelow
set splitright
set hidden
set cmdheight=1
set updatetime=50
set shortmess+=c
set background=dark
"let g:python3_host_prog="D:\\Program Files\\Compilers\\Python3\\python.exe"

" integro intrucciones para refrescar, limpiar y ejecutar archivos
autocmd! BufWritePost init.vim source ~/AppData/Local/nvim/init.vim
"autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType java :call RunJava()
autocmd FileType cpp :call RunCpp()
autocmd FileType python :call RunPython()
autocmd FileType javascript :call RunJsAndTs()
autocmd FileType typescript :call RunJsAndTs()

" ajustes del tema
" contrastes del tema: soft medium hard
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg = NONE
colorscheme gruvbox

" comentarios en italica
let g:gruvbox_italic = 1
"let g.gruvbox_invert_selection = 1
