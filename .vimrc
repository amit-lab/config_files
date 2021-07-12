" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
runtime! archlinux.vim

syntax on 

set complete+=kspell
set completeopt=menuone,longest
set ignorecase
set shortmess+=c
set spelllang=en_us
set noswapfile
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set clipboard=unnamed
set colorcolumn=80
set updatetime=300
set noerrorbells
set nobackup
set undodir=~/.vim/undodir

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/AutoComplPop'
" Plug 'vim-python/python-syntax'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'jremmen/vim-ripgrep'
Plug 'vifm/vifm.vim'
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()

colorscheme gruvbox
set background=dark

" my keybindings
inoremap ii <Esc>

" change leader key
let mapleader = " "

" vifm setting
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" open terminal in vim
map <Leader>tt :vnew term://fish<CR>

