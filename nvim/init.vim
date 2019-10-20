call plug#begin('~/.config/nvim/plugged')

Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'

call plug#end()

""" NERDTree Configuration
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeMapHelp=''
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1

map <C-o> :NERDTreeToggle %<CR>

""" Syntax Highlighting
syntax on
let g:dracula_colorterm = 0
colorscheme dracula

""" Default settings
set number
set mouse=nvi
