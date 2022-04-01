call plug#begin('~/AppData/Local/nvim/plugged/')

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'

" tema y línea de estado
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'maximbaz/lightline-ale'
Plug 'shinchu/lightline-gruvbox.vim'
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
Plug 'honza/vim-snippets'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'psliwka/vim-smoothie'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'

" git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

call plug#end()
