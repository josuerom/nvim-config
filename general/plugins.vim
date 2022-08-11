"██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗  ██╗   ██╗██╗███╗   ███╗
"██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝  ██║   ██║██║████╗ ████║
"██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗  ██║   ██║██║██╔████╔██║
"██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

call plug#begin('~/AppData/Local/coc/nvim-plugins/')

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'
"Plug 'kien/rainbow_parentheses.vim'

" tema
Plug 'morhetz/gruvbox'

" barra de estado
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/lightline.vim'

" barra lateral - iconos
Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'

" búsqueda - agrupador
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" navegación entre pestañas
Plug 'christoomey/vim-tmux-navigator'

" autocompletado - snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'

" IDE
Plug 'terryma/vim-multiple-cursors'
Plug 'eclipse/eclipse.jdt.ls'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
"Plug 'scrooloose/syntastic'
"Plug 'junegunn/goyo.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'

call plug#end()
