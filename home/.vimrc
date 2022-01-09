set history=500
set wildmenu
set so=10
set number 
set backspace=indent,eol,start
set ruler
set suffixes+=.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.lgo,.out,.png,.toc
set suffixes-=.h
set suffixes-=.obj
set whichwrap+=<,>,h,l

filetype plugin on
filetype indent on
syntax on

inoremap kj <Esc>
let mapleader = ","
nmap <laeder>w :w!<cr>
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

set wildignore=*.o,*~,*.pyc
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2

set noerrorbells
set novisualbell
set t_vb=
set tm=500
set foldcolumn

try
    colorscheme desert
catch
endtry
set background=dark

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai
set si
set wrap

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

map <silent> <leader><cr> :noh<cr>

set laststatus=2

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


set guioptions-=R
set guioptions-=r
set guioptions-=l
set guioptions-=L


