" Line Numbers
set number
set relativenumber

" Tab
set nowrap
set tabstop=4
set shiftwidth=4 " Setting shiftwidth to 4 since '0' doesn't work the same in Vim
set smartindent
set expandtab

" Search
set nohlsearch
set incsearch

set cursorline

set clipboard+=unnamedplus
set noswapfile

set scrolloff=8

set undodir=~/.vim/undodir
set undofile

" let g:loaded_netrw = 1
" let g:loaded_netrwPlugin = 1

let mapleader = " "
let maplocalleader = "\\"
set mouse=

nnoremap <leader>xx :Ex<CR>
