" Plugin installation
call plug#begin('~/.vim/plugged')

" Plug 'vim-scripts/AutoComplPop'
" Plug 'vim-python/python-syntax'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'jremmen/vim-ripgrep'
Plug 'vifm/vifm.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-emoji'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()


" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
unlet! skip_defaults_vim
"source $VIMRUNTIME/defaults.vim
set runtimepath+=/usr/share/vim/vimfiles
runtime! archlinux.vim
set nocompatible              " be iMproved, required
filetype off                  " required


syntax on 

set complete+=kspell
set completeopt=menuone,longest
set ignorecase
set shortmess+=c
set spelllang=en_us
set noswapfile
set relativenumber
set nu
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nohlsearch
set encoding=utf-8
set clipboard=unnamed
set colorcolumn=81
set fillchars+=vert:\
set incsearch
set t_Co=256
set path+=**
set noerrorbells

" change the leader key
let mapleader = " "

" for coc plugin setting
set updatetime=300
set hidden
set nobackup
set nowritebackup
set shortmess+=c

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" coc extensions
let g:coc_global_extensions = [
            \ 'coc-json', 
            \ 'coc-git', 
            \ 'coc-json',
            \ 'coc-prettier',
            \ 'coc-clangd',
            \ 'coc-jedi',
            \]

" colorizer requirements
set termguicolors
lua require'colorizer'.setup()


" vifm setting
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>

" neardtree setting
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

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


" emoji setting
set completefunc=emoji#complete "for emoji completion

" open terminal in vim
map <Leader>tt :vnew term://fish<CR>


colorscheme gruvbox
let g:gruvbox_contrast_dark= "hard"
let g:gruvbox_transparent_bg=1
" Workaround for creating transparent bg
autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
        \ |    highlight LineNr     ctermbg=NONE guibg=NONE
        \ |    highlight SignColumn ctermbg=NONE guibg=NONE

set background=dark

" my keybindings
inoremap ii <Esc>

"let g:python_highlight_all = 1
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"syntax enable
"let g:rehash256 = 1
