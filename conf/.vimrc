set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'The-NERD-tree'

call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimenter * NERDTree
syntax on
colorscheme molokai
let g:molokai_original=1
set nu
set t_Co=256
set guifont=Monaco
"set nocp
set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set autoindent
set list listchars=tab:»·,trail:·
autocmd FileType make set noexpandtab tabstop=4 shiftwidth=4
autocmd FileType python set tabstop=4 shiftwidth=4
autocmd FileType eruby  set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc set tabstop=2 shiftwidth=2
autocmd FileType html set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee set tabstop=2 shiftwidth=2
au! BufRead,BufNewFile *.json setfiletype json

" VIM 7.3+ has support for highlighting a specified column.
if exists('+colorcolumn')
    set colorcolumn=80
else
    " Emulate
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
endif

"autocmd BufWritePre * :%s/\s\+$//e
"set list
"set lcs=trail:-
"set listchars=tab:>-,trail:-
