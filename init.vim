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
set title
set number
set mouse=a
set numberwidth=1
set relativenumber
set clipboard=unnamedplus
set showcmd
set ruler
set termencoding=utf-8
set sw=2
set termguicolors
set showmatch
set noshowmode
set nowrap
set cursorline
set splitbelow
set laststatus=2
set autochdir
set autoindent
set confirm
set scrolloff=1
set tabstop=3
set hlsearch
set ignorecase
set timeoutlen=200
set confirm

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
highlight Normal ctermbg=none

filetype plugin indent on

" para usar fuente italica
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" cambio el color de sintaxis 
autocmd ColorScheme * highlight keyword         gui=italic cterm=italic guifg=#D3869B
autocmd ColorScheme * highlight conditional     gui=italic cterm=italic guifg=#D3869B
autocmd ColorScheme * highlight repeat          gui=italic cterm=italic guifg=#D3869B
autocmd ColorScheme * highlight exception       gui=italic cterm=italic guifg=#D3869B
autocmd ColorScheme * highlight comment         gui=italic cterm=italic 
autocmd ColorScheme * highlight function        gui=italic cterm=italic guifg=#83A598
autocmd ColorScheme * highlight identifier      gui=italic cterm=italic guifg=#83A598
autocmd ColorScheme * highlight GitGutterAdd    guifg=#B8BA46 guibg=#282828 ctermfg=10
autocmd ColorScheme * highlight GitGutterChange guifg=#F0BF4F guibg=#282828 ctermfg=11
autocmd ColorScheme * highlight GitGutterDelete guifg=#E75841 guibg=#282828 ctermfg=9
