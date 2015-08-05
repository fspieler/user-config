set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set undolevels=1000
set backspace=indent,eol,start

filetype on
filetype plugin on
filetype indent on

autocmd FileType make setlocal noexpandtab

" scroll by visible line
nnoremap j gj
nnoremap k gk

colorscheme solarized
