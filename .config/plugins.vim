call plug#begin('~/AppData/Local/Vim-Plug/')

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'

" temas
Plug 'morhetz/gruvbox'
Plug 'maximbaz/lightline-ale'

" barra de estado especial para gruvbox
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/lightline.vim'

" barra lateral o árbol
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" otros complementos
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'benmills/vimux'

" navegación rápida entre tabs o pestañas
Plug 'christoomey/vim-tmux-navigator'

" autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" IDE
"Plug 'terryma/vim-multiple-cursors'
Plug 'ddollar/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'yggdroot/indentline'

call plug#end()
