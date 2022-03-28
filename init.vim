"*----------- Configuración [init.vim] 21/Febrero/2021 6:56a.m COL -----------*
 
							"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
							"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
							"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
							"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
							"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
							"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
									 " Configurado por >> Josué Romero
									 " Twitter >> https://twitter.com/josueromr

" Importo los archivos de configuración
so ~/AppData/Local/nvim/.config/plugins-config.vim
so ~/AppData/Local/nvim/.config/plugins.vim
so ~/AppData/Local/nvim/.config/shortcuts.vim

syntax enable
set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set showcmd
set ruler
set termencoding=utf-8
set scrolloff=8
set sw=2
set cindent
set termguicolors
set showmatch
set relativenumber
set noshowmode
set nowrap
set noswapfile
set cursorline
set tabstop=2
set splitbelow

" búsqueda en la cmd-nvim
set hlsearch
set incsearch
set ignorecase
set smartcase

" COC
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" configuración del tema
"colorscheme onedark
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
highlight Normal ctermbg=NONE
