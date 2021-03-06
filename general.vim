set nocompatible
filetype plugin indent on
"No swap files
set noswapfile
"turn on numbering and relative numbering
set nu rnu
"Disable comment on nextline
au BufEnter *.* :set formatoptions-=cro
" disable highlighted text on search
set nohlsearch
set noerrorbells
"No text wrapping
set nowrap
" incremental search
set incsearch

"Stop concealing strings in json
let g:vim_json_syntax_conceal = 0

" move vertically by visual line with j and k
nnoremap j gj
nnoremap k gk

" New window goes below
set splitbelow
" New windows goes right
set splitright

" Set the default file encoding to UTF-8:
set encoding=utf-8

"------------start python pep 8 stuff----------------
" number of spaces that a pre-existing tab is equal to.
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


" For full syntax highlighting:
let python_highlight_all=1

" Keep indentation level from previous line:
autocmd FileType python set autoindent
"----------  end python ----------------"

" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" ------- end syntastic -----------------"

"activate bracket color
let g:rainbow_active = 1

" make backspaces more powerfull
set backspace=indent,eol,start

"set the with of tabstop to 2 spaces
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

let base16colorspace=256

"js stuff"
set syn=auto
set showmatch
filetype on
filetype indent on
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
au BufRead,BufnewFile *.vue,*.js,*.jsx,*.ts,*.tsx  set shiftwidth=2 tabstop=2

"show whitespace
"let g:indentLine_setColors = 1
"let g:indentLine_enabled = 1
"let g:indentLine_leadingSpaceEnabled = 1
"let g:indentLine_leadingSpaceChar = '·'
"let g:indentLine_setConceal = 1
"let g:vim_json_syntax_conceal = 0
let g:indentguides_spacechar = '·'
let g:indentguides_tabchar = '·'

"codefolding
set nofoldenable

"Split navigation keymaps
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Turn Syntax on, everytime vim gets started
au BufEnter *.* :syntax on

"Colorscheme
colorscheme nord
"
" Disable quote concealing in JSON files
"au BufEnter *.* :set conceallevel=0
"set conceallevel=0

" Set ,twig files as HTML
" coc-html is needed!!!
let g:coc_filetype_map = {
    \ 'twig': 'html',
    \}

au BufEnter *.* :IndentGuidesToggle

let g:syntastic_mode_map = {
    \ "mode": "inactive",
    \ "passive_filetypes": ["html"] }
