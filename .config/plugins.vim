call plug#begin('~/AppData/Local/nvim/plugged/')

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'

" tema
Plug 'morhetz/gruvbox'

" barra de estado
Plug 'maximbaz/lightline-ale'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/lightline.vim'

" barra lateral o árbol
Plug 'scrooloose/nerdtree'

" búsqueda rápida
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" navegación rápida entre pestañas
Plug 'christoomey/vim-tmux-navigator'
 
" autocompletado y snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" terminal flotante
Plug 'voldikss/vim-floaterm'

" IDE
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'

" git
Plug 'tpope/vim-fugitive'

call plug#end()
