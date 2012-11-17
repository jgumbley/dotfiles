set nocompatible

"============== Do Bundler Stuff ===============
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" My Bundles here:
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'myusuf3/numbers.vim'
Bundle 'rodjek/vim-puppet'

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
cmap Q qa!
set nofoldenable
set colorcolumn=0

" ensure vundle run
":BundleInstall!
