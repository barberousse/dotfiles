" Stops vim from behaving in a strongly vi-comaptible way
set nocompatible

" Disable filetype detection so Vundle can do its job
filetype off

" Include Vundle in the runtime path
set rtp+=~/.vim/bundle/Vundle.vim

" Initialize Vundle
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Graphical undo
Plugin 'sjl/gundo.vim'

" Coffeescript
Plugin 'kchmck/vim-coffee-script'

" Javascript
Plugin 'jelera/vim-javascript-syntax'

" Node.js
Plugin 'moll/vim-node'

" Rails
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'

"Make sure to include all plugins before this line
call vundle#end()

" Re-enable filetype detection with plugin and indent file loading
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

" Map Ctrl+n to NERDTree
map <C-n> :NERDTreeToggle<CR>

" Map F5 to Gundo
nnoremap <F5> :GundoToggle<CR>

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

" Switch CWD to the directory of the open buffer
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
