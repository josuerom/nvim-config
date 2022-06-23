"*--------------------- Configuración Inicial [init.vim] 21/Febrero/2021 6:56a.m COL ---------------------*

														"██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
														"██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
														"██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
														"██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
														"██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
														"╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
																				"Creador >> Josué Romero
																"Twitter >> https://twitter.com/josueromr

filetype plugin indent on
syntax enable
set number
set mouse=a
set relativenumber
set clipboard=unnamedplus
set background=dark
set showcmd
set ruler
set sw=2
set termguicolors
set showmatch
set noshowmode
set laststatus=2
set tabstop=2
set hlsearch
set ignorecase
set smartcase
set splitbelow
set splitright
set secure
set exrc
set foldmethod=manual
set spelllang=es
autocmd BufWritePre * :%s/\s\+$//e

" COC
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=100
set shortmess+=c
set fileencodings=utf-8


" importo los archivos de configuración global
so ~/AppData/Local/nvim/general/plugins.vim
so ~/AppData/Local/nvim/general/plug-config.vim
so ~/AppData/Local/nvim/general/shortcuts.vim

" ajustes del tema
let g:gruvbox_italic=1
let no_buffers_menu=2
" soft medium hard
let g:gruvbox_contrast_dark="hard"
highlight Normal ctermbg=none
colorscheme gruvbox
