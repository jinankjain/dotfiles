if has('nvim')
    set termguicolors
endif

set rtp+=~/.fzf

call plug#begin()

Plug 'zig-lang/zig.vim'
Plug 'itchyny/lightline.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale'
Plug 'tmhedberg/matchit'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jacoborus/tender.vim'

call plug#end()

syntax enable
colorscheme tender

let g:lightline = {
      \ 'colorscheme': 'tender',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" General Configuration
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
autocmd FileType go setlocal noexpandtab
set laststatus=2
set incsearch ignorecase smartcase
set encoding=utf-8
set number relativenumber
set colorcolumn=81
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:★
set mouse=a
set backspace=2 " make backspace work like most other apps
syntax on
filetype indent plugin on

" Tab navigation
nnoremap tj  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tk  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>

" Moving tabs around to a specific number
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap to  :tabnew<Space>

" Buffer navigation
nnoremap bj  :bfirst<CR>
nnoremap bl  :bnext<CR>
nnoremap bh  :bprev<CR>
nnoremap bk  :blast<CR>
nnoremap bn  :bnext<Space>
nnoremap bd  :bdelete<CR>
nnoremap bo  :badd<Space>

" Custom binding for split window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

nnoremap ; :
nnoremap : ;

" end of line instead of $ which requires shift
nnoremap 9 $

" go the mark point
nnoremap 8 `x

" matching brackets/patterns
nnoremap 5 %

" simple comment code
noremap <leader>/ :Commentary<cr>

" Change esc to jj
ino jj <esc>
cno jj <c-c>

" Source vimrc without closing vim
nnoremap <C-m> :source $MYVIMRC<CR>
nnoremap <C-o> :FZF<CR>

if has('autocmd')
    augroup vimrc
        au!
        au BufWritePost $MYVIMRC so %
    augroup END
endif

if has('macunix')
    let g:ycm_server_python_interpreter = '/usr/local/bin/python2'
else
    let g:ycm_server_python_interpreter = '/usr/bin/python2'
endif

let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'