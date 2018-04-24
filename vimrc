" load packages
packadd! onedark.vim

"
" Settings
"
set nocompatible		" Use Vim settings, not Vi
set noerrorbells		" No beeps.
set number			" Show line numbers.
set backspace=indent,eol,start	" Makes backspace work as expected.
set showcmd			" Show incomplete commands at the bottom
set wildmenu			" Display command line's tab complete options as a menu
set hidden			" Manage multiple buffers effectively
set history=1000		" Bigger history of executed commands

set nobackup			" Don't create annoying backup files
set nowritebackup
set splitright			" Split veritcal windows right to the current window
set splitbelow			" Split horizontal windows below to the current windows
set encoding=utf-8		" Set default endcoding to UTF-8
set autowrite			" Automatically save before :next, :make, etc.
set autoread			" Automatically reread changed files without asking
set linebreak			" Wrap lines in nice places

set noshowmode			" We show the mode with airline
set incsearch			" Shows the match while typing
set hlsearch			" Highlight found searches
set ignorecase			" Search case insensitive...
set smartcase			" ... but not when search pattern contains upper case characters
set ttyfast
set autoindent			" New lines inherit the indentation of previous lines
filetype plugin indent on	" load file type plugins + indentation

set incsearch			" Find the next match as we type the search
set hlsearch			" Highlight searches by default
set ignorecase			" Ignore case when searching
set smartcase			" ...Unless you type a capital
set directory=$HOME/.vim/swp//	" Store swap files in this path rather than all over the place

" Make Vim handle long lines better
set wrap
set textwidth=79
set formatoptions=qrn1

" Visual settings
syntax enable
set background=dark
colorscheme onedark

"
" Filetype settings
"
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType docker-compose setlocal ts=2 sts=2 sw=2 expandtab


"
" Plugin settings
"

" Airline settings
let g:airline_theme='bubblegum'
let g:airline_solarized_bg='dark'

" Vim Terraform settings
let g:terraform_align=1
