set nocompatible

"============== Do Bundler Stuff ===============
filetype off
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" My Bundles here:
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'myusuf3/numbers.vim'
Bundle 'rodjek/vim-puppet'
Bundle 'vim-scripts/VimClojure'
Bundle 'airblade/vim-gitgutter'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'kien/ctrlp.vim'
Bundle 'wannesm/wmgraphviz.vim'
Bundle 'Valloric/YouCompleteMe'

"============== Script configs ===============
map <F2> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

"============== Filetype stuff ===============
filetype plugin on
filetype indent on

" Load custom settings
source ~/.vim/startup/color.vim
"source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim

" Syntax-specific settings
"source ~/.vim/startup/vim.vim
"source ~/.vim/startup/yaml.vim

colorscheme wombat256
set nofoldenable
set colorcolumn=0
set noswapfile

set expandtab       " tabs are converted to spaces
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4

" bind leader (not ladder) key
let mapleader=","
nnoremap <leader>a :echo("\<leader\> works! It is set to <leader>")<CR>
":BundleInstall!

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Clear the search buffer when hitting return
function! MapCR()
   nnoremap <cr> :nohlsearch<cr>
endfunction

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
