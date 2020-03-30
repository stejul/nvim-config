set nocompatible
filetype off


call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
"git interface
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-conflicted'
"filesystem
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim' 

"Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'

"bracket color
Plug 'frazrepo/vim-rainbow'
Plug 'ap/vim-css-color'

"html
"  isnowfy only compatible with python not python3
Plug 'isnowfy/python-vim-instant-markdown'
Plug 'jtratner/vim-flavored-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'nelstrom/vim-markdown-preview'
"python sytax checker
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/Pydiction'
Plug 'vim-scripts/indentpython.vim'

Plug 'slim-template/vim-slim'

"auto-completion stuff
":Plug 'klen/python-mode'
"Plug 'Valloric/YouCompleteMe'
"Plug 'klen/rope-vim'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
""code folding
Plug 'tmhedberg/SimpylFold'

"Colors!!!
Plug 'ajh17/spacegray.vim'

"VUE
Plug 'posva/vim-vue'

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
Plug 'yggdroot/indentline'

Plug 'townk/vim-autoclose'
Plug 'vim-syntastic/syntastic'

call plug#end()

filetype plugin indent on    " enables filetype detection
let g:SimpylFold_docstring_preview = 1

"autocomplete
let g:ycm_autoclose_preview_window_after_completion=1


nmap <F6> :NERDTreeToggle<CR>

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"I don't like swap files
set noswapfile

"turn on numbering
set nu

"vim conflict settings
set stl+=%{ConflictedVersion()}

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

"activate bracket color
let g:rainbow_active = 1

" make backspaces more powerfull
set backspace=indent,eol,start

"set the with of tabstop to 4 spaces
set tabstop=4
set softtabstop=4
"make indentation to correnspond to one tab
set shiftwidth=4
set smarttab
set expandtab

" Enable highlighting of the current line
set cursorline

"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za 
"----------Stop python PEP 8 stuff--------------

"Git conflicted
" Use `gl` and `gu` rather than the default conflicted diffget mappings
let g:diffget_local_map = 'gl'
let g:diffget_upstream_map = 'gu'

let base16colorspace=256
"colorscheme
colo spacegray

"js stuff"
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

"let g:pymode_python = 'python'

"spacegrey settings
let g:spacegray_use_italics = 1
let g:spacegray_low_contrast = 1
