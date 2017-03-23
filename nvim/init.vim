"Enable syntax highlighting
syntax on
" Enable file type detection
filetype plugin on

" vim-plug 
call plug#begin('~/.config/init.vim')
Plug 'othree/yajs.vim'
Plug 'lambdatoast/elm.vim'
Plug 'leafgarland/typescript-vim'
Plug 'exu/pgsql.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

" Make pgsql.vim handle all SQL files
let g:sql_type_default = 'pgsql'

" Use the Typescript compiler in the project root
let g:typescript_compiler_binary='./node_modules/.bin/tsc'

" Wrap lines that exceed pane length 
set wrap

" Index line numbering relative to the current line
set number relativenumber

" Insert <space>s instead of <tab>s in insert mode
set expandtab

" Number of columns in a <tab> for a read buffer
set tabstop=2

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=2

" Number of columns in a <tab> used in editing operations
set softtabstop=2

" Reload open buffers when filesystem changes are detected
set autoread

" Disable swapfile generation
set noswapfile

" Disable buffer back-up generation on write
set nobackup 

" Don't flash screen instead of an error bell
set novisualbell

" No audio bells on error
set noerrorbells

" Last open window will never carry a status line
set laststatus=0

" Set leader prefix
let mapleader=","

" Remappings
inoremap ;; <esc>
tnoremap <leader>l <C-\><C-n>
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>k :nohlsearch<CR>
nnoremap <leader>gs :!git status -bs<CR>
nnoremap j gj
nnoremap k gk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

