"Enable syntax highlighting
syntax on
" Enable file type detection
filetype plugin on

"Instruct vim, themes, et al you prefer dark
set background=dark

" vim-plug 
call plug#begin('~/.config/init.vim')
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'exu/pgsql.vim'
Plug 'othree/yajs.vim'
Plug 'lambdatoast/elm.vim'
Plug 'leafgarland/typescript-vim'
call plug#end()

" CtrlP
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_custom_ignore = '\v\/(\.git | node_modules)'

" Airline
let g:airline_theme='solarized'

" Make pgsql.vim handle all SQL files
let g:sql_type_default='pgsql'

" Use the Typescript compiler in the project root
let g:typescript_compiler_binary='./node_modules/.bin/tsc'

" vimwiki
let wiki = {}
let wiki.path = '~/Dropbox/Wiki'
let wiki.path_html = '~/Dropbox'
let wiki.nested_syntaxes = { 'js': 'javascript', 'ts': 'typescript' }
let g:vimwiki_list = [wiki]

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

" Always carry a status line
set laststatus=2

" Ignore from wild search
set wildignore+=*/node_modules/*

" Enable CLI completion on <TAB>
set wildmenu
set wildmode=full

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
