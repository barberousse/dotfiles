set nocompatible					" Disable legacy compatibility

syntax enable						" Enable syntax highlighting

filetype plugin on					" Enable filetype plugins
filetype indent on

" Text Processing
set encoding=utf-8					" Set UTF-8 as standard encoding

set ffs=unix						" Ensure UNIX line endings

set tabstop=4						" Number of visual spaces per TAB

set softtabstop=4					" Number of visual spaces in tab when editing

set expandtab						" Tabs are spaces

set autoindent						" Indent based on last line

set smartindent						" Guess proper indentation from filetype

" UI
set number						" Show line numbers

set wildmenu						" Visual autocomplete for command menu

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.log,*/node_modules/*,*/.git/*,*/.bin/*

set lazyredraw						" Redraw only when we need to

set showmatch						" Highlight matching [{()}]

set autoread						" Automatically reload a file when it's changed externally

" Searching
set incsearch						" Search as characters are entered

set hlsearch						" Highlight matches

" Folding
set foldenable						" Enable folding

set foldlevelstart=10					" Open most folds by default

set foldnestmax=10					" 10 nested folder max

set foldmethod=syntax					" Fold based on syntactical distinctions

" Session
set nobackup						" Turn backup off
set nowb
set noswapfile

" Mappings
"
" Leader is comma
let mapleader=","
" kk is <escape> 
inoremap kk <esc>
" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>		
" Spaces toggles folds
nnoremap <space> za
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Syntax defaults
augroup configgroup
    autocmd!
    autocmd FileType ruby,Gemfile setlocal tabstop=2 
    autocmd FileType ruby,Gemfile setlocal shiftwidth=2 
    autocmd FileType ruby,Gemfile setlocal softtabstop=2
augroup END

" Plugins
call plug#begin('~/.vim/plugged')			" Plugins go between begin/end calls

Plug 'tpope/vim-fugitive'                   " Call Git commands from Vim
Plug 'tpope/vim-rails'                      " Syntax, commands, and bindings for Rails projects
Plug 'tpope/vim-bundler'                    " Call Bundler from Vim
Plug 'othree/yajs'                          " ES6 highlighting
Plug 'kchmck/vim-coffee-script'             " Coffeescript support
Plug 'mattn/emmet-vim'                      " Emmet shortcuts

call plug#end()

" emmet-vim
let g:user_emmet_leader_key='<C-A>'

