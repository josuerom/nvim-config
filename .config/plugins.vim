call plug#begin('~/AppData/Local/vim-plug/')

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'

" tema y línea de estado
Plug 'morhetz/gruvbox'
Plug 'maximbaz/lightline-ale'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/lightline.vim'

" barra lateral o árbol
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" otros complementos
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" navegación rápida entre tabs o pestañas
Plug 'christoomey/vim-tmux-navigator'

" test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'
 
" autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-fugitive'

call plug#end()
