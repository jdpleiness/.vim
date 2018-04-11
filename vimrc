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
" Filetype settings
"
au BufNewFile,BufRead *.vim setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
au BufNewFile,BufRead *.md setlocal spell noet ts=4 sw=4
au BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.cpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.hpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.jade setlocal expandtab ts=2 sw=2

augroup filetypedetect
  au BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
  au BufNewFile,BufRead .nginx.conf*,nginx.conf* setf nginx
  au BufNewFile,BufRead *.jade setf pug
augroup END


au FileType nginx setlocal noet ts=4 sw=4 sts=4

" Go settings
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
autocmd BufEnter *.go colorscheme nofrils-dark

" scala settings
autocmd BufNewFile,BufReadPost *.scala setl shiftwidth=2 expandtab

" Markdown Settings
autocmd BufNewFile,BufReadPost *.md setl ts=4 sw=4 sts=4 expandtab

" lua settings
autocmd BufNewFile,BufRead *.lua setlocal noet ts=4 sw=4 sts=4

" Dockerfile settings
autocmd FileType dockerfile set noexpandtab

" shell/config/systemd settings
autocmd FileType fstab,systemd set noexpandtab
autocmd FileType gitconfig,sh,toml set noexpandtab

" python indent
autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 smarttab expandtab

" toml settings
au BufRead,BufNewFile MAINTAINERS set ft=toml

" spell check for git commits
autocmd FileType gitcommit setlocal spell


"
" Plugin settings
"

" Airline settings
let g:airline_theme='bubblegum'
let g:airline_solarized_bg='dark'

" Vim Terraform settings
let g:terraform_align=1
