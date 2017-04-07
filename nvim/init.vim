"Enable syntax highlighting
syntax on
" Enable file type detection
filetype plugin on

" vim-plug 
call plug#begin('~/.config/init.vim')
Plug 'othree/yajs.vim'
Plug 'leafgarland/typescript-vim'
Plug 'exu/pgsql.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vimwiki/vimwiki'
call plug#end()

" Enable the wildmenu
set wildmenu
set wildignore+=*/tmp/*,*/node_modules*
set completeopt=longest,menuone,preview

" Enable omnicompletion
set omnifunc=syntaxcomplete#Complete

" Wrap lines that exceed pane length 
set wrap

" Number of columns to scroll horizontally,
" smaller values are meant for faster terminals
set sidescroll=1

" Draw pipes when there are off-screen 
" characters on a line
set listchars+=precedes:\$,extends:\$

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

" Don't wrap JavaScript & TypeScript buffers
autocmd FileType javascript setlocal nowrap
autocmd FileType typescript setlocal nowrap
autocmd FileType typescript nmap <buffer> <leader>t : <C-u>echo tsuquyomi#hint()<CR>

" Make pgsql.vim handle all SQL files
let g:sql_type_default = 'pgsql'

" Use the Typescript compiler in the project root
let g:typescript_compiler_binary='./node_modules/.bin/tsc'

" Show type and signature hints in Typescript omnicomplete
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1

" Configure vimwiki
let wiki = {}
let wiki.path = '~/Dropbox/Wiki'
let wiki.path_html = '~/Dropbox/Wiki'
let wiki.nested_syntaxes = { 'js': 'javascript', 'ts': 'typescript' }
let g:vimwiki_list = [wiki]

" Syntastic
let g:syntastic_typescript_checkers = [ "tsuquyomi" ]
