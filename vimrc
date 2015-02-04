" Stops vim from behaving in a strongly vi-comaptible way
set nocompatible

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'shougo/vimproc', {'do': 'make'}
Plug 'shougo/vimshell'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'thoughtbot/vim-rspec'
Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
Plug 'kchmck/vim-coffee-script'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'

call plug#end()

" Enable filetype detection with plugin and indent file loading
filetype plugin indent on

" Enable syntax highlighting
syntax enable

" Enable line numbers
set number

" Set to auto read when a file is changed from the outside
set autoread

" Number of visual spaces per TAB on file load
set tabstop=2

" Number of spaces in tab when editing
set softtabstop=2

" Number of spaces inserted for indentation
set shiftwidth=2

" Turn TABs into spaces
set expandtab

" Be smart when using tabs ;)
set smarttab

" A graphical menu of tab completion matches
set wildmenu

" Redraw interface only when necessary
set lazyredraw

" Show matching braces, brackets, and parentheses
set showmatch

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Bind <Esc> to kk
:inoremap kk <Esc>

" Fast saving
nmap <leader>w :w!<cr>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Switch CWD to that of the current buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
