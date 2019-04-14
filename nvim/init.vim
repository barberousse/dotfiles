"Enable syntax highlighting
syntax enable
" Enable file type detection
filetype plugin on

" vim-plug 
call plug#begin('~/.config/init.vim')
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'exu/pgsql.vim'
Plug 'othree/yajs.vim'
Plug 'lambdatoast/elm.vim'
Plug 'leafgarland/typescript-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'purescript-contrib/purescript-vim'
Plug 'ayu-theme/ayu-vim'
call plug#end()

" Show column ruler
set ruler

" Don't wrap lines that exceed pane length
set nowrap

" Horizontally scroll in increments of 5
set sidescroll=5

" Display this characters before and after a text cutoff
set listchars+=precedes:«,extends:»

" Index line numbering relative to the current line
set number relativenumber

" Show tab number in tab line
set guitablabel=%N/\ %t\ %M

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
set wildignore+=*/node_modules/*,*/.git

" By default, apply the /g flag to global substititions
set gdefault

" Reduce key press delay
set timeoutlen=1000 ttimeoutlen=0

" Set leader prefix
let mapleader=","

" Remappings
inoremap kj <esc>
tnoremap <leader>l <C-\><C-n>
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>k :nohlsearch<CR>
nnoremap j gj
nnoremap k gk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Terminal
autocmd TermOpen * setlocal nonumber norelativenumber

"CSS
autocmd Filetype css setlocal iskeyword+=-

" Markdown
autocmd BufRead,BufWrite,BufNewFile markdown setlocal textwidth=80

" CtrlP
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Make pgsql.vim handle all SQL files
let g:sql_type_default='pgsql'

" Render GUI TS tooltips
if has("gui_vimr")
  set termguicolors
  let ayucolor="mirage"
  colorscheme ayu
end
