set history=500
set wildmenu
set so=10
set number 
set relativenumber
set backspace=indent,eol,start
set ruler
set suffixes+=.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.lgo,.out,.png,.toc
set suffixes-=.h
set suffixes-=.obj
set whichwrap+=<,>,h,l
set t_Co=256

filetype plugin on
filetype indent on
syntax on

inoremap kj <Esc>

nnoremap <S-j> :m+<CR>
nnoremap <S-k> :m-2<CR>
inoremap <S-j> <Esc>:m+<CR>
inoremap <S-k> <Esc>:m-2<CR>
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

set background=dark

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set splitbelow
set splitright
set shiftwidth=4

set lbr
set tw=500

set ai
set si
set wrap

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

map <silent> <leader><cr> :noh<cr>


set guioptions-=R
set guioptions-=r
set guioptions-=l
set guioptions-=L

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'sts10/vim-pink-moon'
Plug 'ajmwagar/vim-deus'
call plug#end()

"colorscheme deus
"colorscheme 256_noir

" Change highlighting of cursor line when entering/leaving Insert Mode
 "set cursorline
 "highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
 "autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
 "autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
