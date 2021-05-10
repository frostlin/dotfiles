set relativenumber

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

"automated installation of vimplug if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugged')

"plugins here, coc for example
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <silent><expr> <C-space> coc#refresh()

"GoTo code navigation
nmap <leader>g <C-o>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)

"show all diagnostics.
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
"manage extensions.
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }


Plug 'sheerun/vim-polyglot'
Plug 'pechorin/any-jump.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },
}
EOF
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'scrooloose/NERDTree'
nnoremap <C-n> :NERDTree<CR>
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

call plug#end()


colorscheme nvcode
