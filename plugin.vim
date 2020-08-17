call plug#begin()

"git interface
Plug 'tpope/vim-fugitive'
"Plug 'christoomey/vim-conflicted'
"filesystem
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim' 
"Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
""Git-Gutter
Plug 'airblade/vim-gitgutter'
"bracket color
Plug 'frazrepo/vim-rainbow'
Plug 'ap/vim-css-color'

"html
Plug 'jtratner/vim-flavored-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'nelstrom/vim-markdown-preview'
"python sytax checker
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'

Plug 'slim-template/vim-slim'

"auto-completion stuff
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"Plug 'ervandew/supertab'
""code folding
Plug 'tmhedberg/SimpylFold'

"VUE
Plug 'posva/vim-vue'

" styled components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"REACT
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

"PHP
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'ncm2/ncm2'
Plug 'phpactor/phpactor'
Plug 'phpactor/ncm2-phpactor'
Plug 'neomake/neomake'
Plug 'adoy/vim-php-refactoring-toolbox'

"Indentation
"Plug 'yggdroot/indentline'
Plug 'thaerkh/vim-indentguides'

Plug 'townk/vim-autoclose'
Plug 'vim-syntastic/syntastic'

" Autcompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Colorscheme
Plug 'arcticicestudio/nord-vim'
"Vim Multi Cursor
"https://github.com/mg979/vim-visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"vim Debug
"Plug 'vim-vdebug/vdebug'
call plug#end()
