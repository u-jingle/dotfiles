call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

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
nmap  <C-e> :NERDTreeToggle<CR> " Ctrl + E

" PLUGIN: Fzf
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

" for vim-airline
set laststatus=2
let g:airline_theme='hybrid'
let g:airline_theme= 'minimalist'
