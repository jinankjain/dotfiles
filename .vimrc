set rtp+=/Users/turingmachine/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

" Always show statusline
set laststatus=2

" General vim configuration
set relativenumber
set number
set hlsearch
syntax on
filetype indent plugin on
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4

" Vundle configuration
set nocompatible
filetype off

" Set runtime path for Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Keep all the Vundle plugins between begin and end
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'johngrib/vim-game-code-break'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/nginx.vim'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'vim-scripts/netrw.vim'
Plugin 'spolu/dwm.vim'

call vundle#end()
filetype plugin indent on

" Nerd Tree Configuration
map <C-e> :NERDTreeToggle<CR>

" Semantic Highlight colors
colorscheme space-vim-dark

" Setting backspace key in vim
set backspace=2 " make backspace work like most other apps

" Change esc to jj
ino jj <esc>
cno jj <c-c>

" For visual mode toggle
vno v <esc>

" Tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
"Moving tabs around to a specific number 
nnoremap tm  :tabm<Space> 
nnoremap td  :tabclose<CR>
nnoremap to  :tabnew<Space>

" Configuration for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable auto save mode
let g:auto_save = 1 

set mouse=a
