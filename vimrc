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

" Number of visual spaces per TAB on file load
set tabstop=4

" Number of spaces in tab when editing
set softtabstop=4

" Turn TABs into spaces
set expandtab

" A graphical menu of tab completion matches
set wildmenu

" Redraw interface only when necessary
set lazyredraw

" Show matching braces, brackets, and parentheses
set showmatch

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Wrap autocmds in an augroup to ensure they are each only ran once
augroup configgroup
	autocmd!
	autocmd VimEnter * highlight clear SignColumn
	autocmd BufWritePre *.php,*.py.*.js.*.txt,*.md :call <SID>StripTrailingWhiteSpaces()
	autocmd FileType ruby setlocal tabstop=2
	autocmd FileType ruby setlocal shiftwidth=2
	autocmd FileType ruby setlocal softtabstop=2
	autocmd FileType ruby setlocal commentstring=#\ %s
augroup END
