" General vim configuration
set laststatus=2
set relativenumber
set number
" set hlsearch
set incsearch
syntax on
filetype indent plugin on
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4

set colorcolumn=81

" Vundle configuration
set nocompatible
filetype off

" Set runtime path for Vundle
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf

call vundle#begin()

" Keep all the Vundle plugins between begin and end
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plugin 'zig-lang/zig.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'

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

" Buffer navigation
nnoremap bh  :bfirst<CR>
nnoremap bk  :bnext<CR>
nnoremap bj  :bprev<CR>
nnoremap bl  :blast<CR>
nnoremap bn  :bnext<Space>
nnoremap bd  :bdelete<CR>
nnoremap bo  :badd<Space>

" Enable auto save mode
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_autosave_always = 1

" Enable tag bar
nmap <F8> :TagbarToggle<CR>

" Custom binding for split window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright


" Source vimrc without closing vim
nnoremap <C-m> :source $MYVIMRC<CR>
nnoremap <C-o> :FZF<CR>

set mouse=a

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

nnoremap ; :
nnoremap : ;

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:★
