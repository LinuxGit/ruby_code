set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'The-NERD-tree'

filetype plugin indent on     " required!

autocmd vimenter * NERDTree
colorscheme molokai
let g:molokai_original=1
set t_Co=256
set nu
set guifont=Monaco
"set nocp
set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

filetype plugin indent on
set autoindent
set list listchars=tab:»·,trail:·
autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab
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
