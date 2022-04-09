"*----------- Configuración [init.vim] 21/Febrero/2021 6:56a.m COL -----------*

							"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
							"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
							"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
							"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
							"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║
							"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
									 " Creador >> Josué Romero
									 " Twitter >> https://twitter.com/josueromr

" importo los archivos de configuración global
so ~/AppData/Local/nvim/.config/plugins.vim
so ~/AppData/Local/nvim/.config/plugins-config.vim
so ~/AppData/Local/nvim/.config/shortcuts.vim

filetype plugin indent on
syntax enable
set number
set mouse=a
set numberwidth=1
set relativenumber
set clipboard=unnamedplus
set background=dark
set showcmd
set ruler
set sw=2
set termguicolors
set showmatch
set noshowmode
set nowrap
set cursorline
set laststatus=2
set tabstop=2
set hlsearch
set ignorecase
set splitbelow
set confirm
set diffopt+=vertical

" COC
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=100
set shortmess+=c

" ajustes para el tema gruvbox
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="medium"
let no_buffers_menu=1
highlight Normal ctermbg=none
colorscheme gruvbox
