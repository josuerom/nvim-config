call plug#begin('~/AppData/Local/vim-plug/')

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'

" temas
Plug 'morhetz/gruvbox'

" barra de estado especial para gruvbox
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" barra lateral o árbol
Plug 'scrooloose/nerdtree'

" otros complementos
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" navegación rápida entre tabs o pestañas
Plug 'christoomey/vim-tmux-navigator'

" autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Telescope y sus complementos
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" IDE
Plug 'terrortylor/nvim-comment'
Plug 'jiangmiao/auto-pairs'
Plug 'yggdroot/indentline'

call plug#end()
