"Almost Everything has been copied from somewhere
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

"https://github.com/tpope/vim-pathogen
execute pathogen#infect()

"don't like braces highlighting
let g:loaded_matchparen= 0

" should allow movement in long lines easier
" and predictable
nnoremap <buffer> k gk
nnoremap <buffer> j gj

set ts=8 sw=4 sts=4 tw=75 expandtab

au BufNewFile,BufRead *.h HeaderguardAdd

au BufNewFile,BufRead *.template set filetype=cpp
au BufNewFile,BufRead *.tpp      set filetype=cpp
"au BufRead,BufNewFile *.markdown set filetype=mkd
"au BufRead,BufNewFile *.md       set filetype=mkd
"autocmd BufRead,BufNewFile *.{cpp,py,java} set list listchars=tab:\┆\ 
"above works on tabs only

"saves folding before leaving :mkview
"re-loads the view automatically when starts
"note that this will be the default ones, the 
"custom ones can still be set like :mkview 2 :loadview 2 etc.
"note: the question mark before avoids error on vim wihtout filename
"and such
"they tends to live in ~/.vim/view/
"but use :help mkview
"etc. when needed

"au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview
"
"above gotten rid of as it seems to be making a lot of mess,
"I'd rather set it manually myself, but loading default if there is helpful


filetype plugin on " for nerdcommenter
" https://github.com/scrooloose/nerdcommenter

let mapleader="," "changes leader key from \ to ,

"Alternative for nerdtree: (http://stackoverflow.com/a/18287760)
"ctrl + n
nnoremap <C-n> :Vexplore<CR>
let g:netrw_banner       = 0
let g:netrw_keepdir      = 0
let g:netrw_liststyle    = 3
let g:netrw_sort_options = 'i'

"ctrl+m
nmap <C-m> :TagbarToggle<CR>


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"""""Select and ga and type by what eg: = and done

let delimitMate_expand_cr = 1

"http://vim.wikia.com/wiki/C++_code_completion
"1. Install OmniCppComplete. See its doc/omnicppcomplete.txt file for information.
"2. Make a directory, for example ~/.vim/tags that will hold your ctags.
"3. Create stdc++ tags: Download and unpack the modified libstdc++ headers to ~/.vim/tags/cpp_src
"4. Run ctags: 
"cd ~/.vim/tags
"ctags -R --sort=1 --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f cpp cpp_src
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

set autochdir
" -- ctags --
" map F8 to generate ctags for current folder:
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" add current directory's generated tags file to available tags

set tags=./tags,tags "set tags of current dir

set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4
