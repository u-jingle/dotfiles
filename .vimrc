call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'

call plug#end()

if has("syntax")
        syntax on
endif

set number
set autoindent
set cindent
set nu
set shiftwidth=4
set showmatch
set tabstop=4
set expandtab
set smarttab
set nowrap
set sidescroll=2
set sidescrolloff=10

let NERDTreeShowHidden=1

" PLUGIN: Nerdtree
let NERDTreeWinPos = "left"
nmap  <C-f> :NERDTreeFind<CR> " Ctrl + f 
nnoremap <Esc>1 :NERDTreeToggle<CR>


" for vim-airline
set laststatus=2
let g:airline_theme='hybrid'
let g:airline_theme= 'minimalist'
