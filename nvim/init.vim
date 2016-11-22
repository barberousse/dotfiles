syntax enable

set number
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

let mapleader=","
inoremap ;; <esc>
tnoremap <leader>l <C-\><C-n>
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>k :nohlsearch<CR>
nnoremap <leader>gs :!git status -bs<CR>
nnoremap j gj
nnoremap k gk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set autoread

set noswapfile
set nobackup 

set novisualbell
set noerrorbells

set laststatus=0

colorscheme Kafka
set background=dark
set cursorline

call plug#begin('~/.config/init.vim')

Plug 'othree/yajs.vim'
Plug 'lambdatoast/elm.vim'
Plug 'leafgarland/typescript-vim'
Plug 'exu/pgsql.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Quramy/tsuquyomi'
Plug 'tpope/vim-rails'
Plug 'digitaltoad/vim-pug'
Plug 'tpope/vim-fugitive'

call plug#end()

" Make pgsql.vim handle all SQL files
let g:sql_type_default = 'pgsql'
