"*--------------------- Configuración Inicial [init.vim] 21/Febrero/2021 6:56a.m COL ---------------------*

														"██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
														"██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
														"██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
														"██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
														"██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
														"╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
																				"Creador >> Josué Romero
																"Twitter >> https://twitter.com/josueromr

syntax enable
set number
set mouse=a
set relativenumber
set clipboard=unnamedplus
set background=dark
set ruler
set sw=3
set tabstop=3
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
set foldmethod=manual
set langmenu=es

" Conquer Of Completion COC
set hidden
set cmdheight=1
set updatetime=100
set shortmess+=c

" otros ajustes
autocmd! BufWritePost init.vim source ~/AppData/Local/nvim/init.vim
autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType java :call RunJava()
autocmd FileType python :call RunPython()
autocmd FileType javascript :call RunJsAndTs()
autocmd FileType typescript :call RunJsAndTs()

" importo los archivos de configuración global
so ~/AppData/Local/nvim/general/plugins.vim
so ~/AppData/Local/nvim/general/plug-config.vim
so ~/AppData/Local/nvim/general/shortcuts.vim

" ajustes del tema
"let g:gruvbox_italic=1
let no_buffers_menu=1
" soft medium hard
let g:gruvbox_contrast_dark="hard"
highlight Normal ctermbg=none
colorscheme gruvbox
