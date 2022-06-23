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
set sw=2
set termguicolors
set showmatch
set showcmd
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
set mat=2
set smarttab
set langmenu=latin1
let $LANG='latin1'

autocmd! BufWritePost init.vim source ~/AppData/Local/nvim/init.vim
autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType java :call RunJava()
autocmd FileType python :call RunPython()
autocmd FileType javascript :call RunJsAndTs()
autocmd FileType typescript :call RunJsAndTs()

" seteo de Conquer Of Completion COC
set hidden
set cmdheight=1
set updatetime=100
set shortmess+=c

" importo los archivos de configuración global
so ~/AppData/Local/nvim/general/plugins.vim
so ~/AppData/Local/nvim/general/plug-config.vim
so ~/AppData/Local/nvim/general/shortcuts.vim

" ajustes del tema
let g:gruvbox_italic=1
" soft medium hard
let g:gruvbox_contrast_dark="hard"
highlight Normal ctermbg=NONE
colorscheme gruvbox
