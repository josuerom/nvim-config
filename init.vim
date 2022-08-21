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
set numberwidth=1
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
set hidden
set cmdheight=1
set updatetime=50
set shortmess+=c

" importo los archivos de personalización
so ~/AppData/Local/nvim/general/plugins.vim
so ~/AppData/Local/nvim/general/plug-config.vim
so ~/AppData/Local/nvim/general/shortcuts.vim

" integro intrucciones para refrescar, limpiar y ejecutar archivos
"autocmd! BufWritePost init.vim source ~/AppData/Local/nvim/init.vim
autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType java :call RunJava()
autocmd FileType python :call RunPython()
autocmd FileType javascript :call RunJsAndTs()

" ajustes del tema
"let g:gruvbox_italic=1
" soft medium hard
let g:gruvbox_contrast_dark="hard"
highlight Normal ctermbg=NONE
colorscheme gruvbox
