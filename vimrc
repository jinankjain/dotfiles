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
Plugin 'jiangmiao/auto-pairs'
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/nginx.vim'
Plugin 'vim-scripts/netrw.vim'
Plugin 'spolu/dwm.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'godlygeek/csapprox'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'thaerkh/vim-workspace'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jaxbot/browserlink.vim'

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

" Vim airline
let g:airline#extensions#tabline#enabled = 1

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
nnoremap bj  :bfirst<CR>
nnoremap bl  :bnext<CR>
nnoremap bh  :bprev<CR>
nnoremap bk  :blast<CR>
nnoremap bn  :tabnext<Space>
nnoremap bd  :bdelete<CR>
nnoremap bo  :badd<Space>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable auto save mode
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_autosave_always = 1

" vim-go configuration
let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:tagbar_ctags_bin='/usr/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26


" go-tagbar configuration
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" Enable tag bar
nmap <F8> :TagbarToggle<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Source vimrc without closing vim
nnoremap <C-r> :source $MYVIMRC<CR>

set mouse=a

