call pathogen#runtime_append_all_bundles()
map <F2> :NERDTreeToggle<CR>

"============== Filetype stuff ===============
filetype plugin on
filetype indent on

"============== Script configs ===============
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Load custom settings
source ~/.vim/startup/color.vim
source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim

" Syntax-specific settings
"source ~/.vim/startup/vim.vim
"source ~/.vim/startup/yaml.vim

colorscheme wombat256
cmap Q qa!
set nofoldenable
set colorcolumn=0
