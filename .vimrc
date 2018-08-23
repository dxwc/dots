set exrc                " looks for project specific .vimrc in local dir
set secure              " looks out for security issues with local .vimrc

set nocompatible        " use vim defaults
set scrolloff=3         " keep 3 lines when scrolling
set ai                  " set auto-indenting on for programming

set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set number              " show line numbers
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present
set smarttab		" Improves tabbing
set autoindent          " autoindenting

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

syntax on               " turn syntax highlighting on by default
filetype on             " detect type of file
filetype indent on      " load indent file for specific file type

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" should allow movement in long lines easier
" and predictable
nnoremap <buffer> k gk
nnoremap <buffer> j gj

set ts=8 sw=4 sts=4 tw=75 expandtab

"don't like braces highlighting
let g:loaded_matchparen= 0

"plugins in .vim/bundle/
"git clone https://github.com/junegunn/goyo.vim
"git clone https://github.com/plasticboy/vim-markdown
set runtimepath+=~/.vim/bundle/goyo.vim
set runtimepath+=~/.vim/bundle/vim-markdown

"https://github.com/junegunn/goyo.vim/issues/49
"let g:goyo_margin_top = 0
"let g:goyo_margin_bottom = 0
