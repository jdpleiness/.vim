" load packages
packadd! onedark.vim

"
" Settings
"
set noerrorbells		" No beeps.
set number			" Show line numbers.
set backspace=indent,eol,start	" Makes backspace work as expected.
set showcmd			" Show what I am typing.

set noswapfile			" Don't use swapfile
set nobackup			" Don't create annoying backup files
set nowritebackup
set splitright			" Split veritcal windows right to the current window
set splitbelow			" Split horizontal windows below to the current windows
set encoding=utf-8		" Set default endcoding to UTF-8
set autowrite			" Automatically save before :next, :make, etc.
set autoread			" Automatically reread changed files without asking

set noshowmode			" We show the mode with airline
set incsearch			" Shows the match while typing
set hlsearch			" Highlight found searches
set ignorecase			" Search case insensitive...
set smartcase			" ... but not when search pattern contains upper case characters
set ttyfast
filetype plugin indent on	" load file type plugins + indentation

" Make Vim handle long lines better
set wrap
set textwidth=79
set formatoptions=qrn1

" Visual settings
syntax enable
set background=dark
colorscheme onedark


"
" Plugin settings
"

" Airline settings
let g:airline_theme='bubblegum'
let g:airline_solarized_bg='dark'

" Vim Terraform settings
let g:terraform_align=1
