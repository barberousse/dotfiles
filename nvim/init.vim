"Enable syntax highlighting
syntax on
" Enable file type detection
filetype plugin on

"colorscheme Kafka

" vim-plug 
call plug#begin('~/.config/init.vim')
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'exu/pgsql.vim'
Plug 'othree/yajs.vim'
Plug 'lambdatoast/elm.vim'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
call plug#end()

" Show column ruler
set ruler

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

" Show status line when split
set laststatus=1

" Enable CLI completion on <TAB>
set wildmenu
set wildmode=full

" By default, apply the /g flag to global substititions
set gdefault

" Set leader prefix
let mapleader=","

" Remappings
inoremap ;; <esc>
tnoremap <leader>l <C-\><C-n>
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>k :nohlsearch<CR>
nnoremap j gj
nnoremap k gk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" CtrlP
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v\/(\.git | node_modules)'

" Make pgsql.vim handle all SQL files
let g:sql_type_default='pgsql'

" Use the Typescript compiler in the project root
let g:typescript_compiler_binary='./node_modules/.bin/tsc'

" Show function signatures in Typescript completion
let g:tsuquyomi_completion_detail = 1

" Show function signatures in preview window
autocmd FileType typescript setlocal completeopt+=menu,preview

" Map a leader binding to on-demand type hinting
autocmd FileType typescript nmap <buffer> <leader>t :<C-u>echo tsuquyomi#hint()<CR>

" vimwiki
let wiki = {}
let wiki.path = '~/Dropbox/Wiki'
let wiki.path_html = '~/Dropbox'
let wiki.nested_syntaxes = { 'js': 'javascript', 'ts': 'typescript' }
let g:vimwiki_list = [wiki]
