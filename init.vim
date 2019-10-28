if has('nvim')
    set termguicolors
endif

set rtp+=~/.fzf

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/space-vim-theme'
Plug 'Yggdroot/indentLine'
Plug 'bling/vim-bufferline'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-commentary'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'racer-rust/vim-racer'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'w0rp/ale'

call plug#end()

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

" Source vimrc without closing vim
nnoremap <C-m> :source $MYVIMRC<CR>
nnoremap <C-o> :FZF<CR>

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" vim-airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline_theme='violet'

" coloscheme
" Range:   233 (darkest) ~ 238 (lightest)
" Default: 235
colorscheme space_vim_theme
set background=dark
let g:space_vim_italic = 1
let g:space_vim_italicize_strings = 1

" indentLine
let g:indentLine_setColors = 0

" vim-racer
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

" shougo <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" deoplete-jedi
let g:deoplete#sources#jedi#show_docstring = 1

if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading\ -S
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" substitute helper
set inccommand=split

" gutentags

" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
let g:gutentags_project_root = ['.root']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

let g:gutentags_define_advanced_commands = 1

" vim-preview
autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
noremap <F4> :PreviewSignature!<cr>
inoremap <F4> <c-\><c-o>:PreviewSignature!<cr>
