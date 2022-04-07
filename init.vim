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
set termencoding=utf-8
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

" COC
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=100
set shortmess+=c
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" configuración del tema
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_italic=1
let g:gruvbox_improved_warnings=1
highlight Normal ctermbg=none

" color del resaltado de sintaxis 
autocmd BufEnter * :set signcolumn=number
autocmd BufEnter * :syntax sync fromstart
autocmd ColorScheme * highlight keyword         gui=italic cterm=italic guifg=#D3869B
autocmd ColorScheme * highlight conditional     gui=italic cterm=italic guifg=#D3869B
autocmd ColorScheme * highlight repeat          gui=italic cterm=italic guifg=#D3869B
autocmd ColorScheme * highlight exception       gui=italic cterm=italic guifg=#D3869B
autocmd ColorScheme * highlight comment         gui=italic cterm=italic 
autocmd ColorScheme * highlight function        gui=italic cterm=italic guifg=#83A598
autocmd ColorScheme * highlight identifier      gui=italic cterm=italic guifg=#83A598
