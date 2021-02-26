" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Comments
    Plug 'tpope/vim-commentary'

    " Change dates fast
    Plug 'tpope/vim-speeddating'

    " Convert binary, hex, etc..
    Plug 'glts/vim-radical'

    " Repeat stuff
    Plug 'tpope/vim-repeat'

    " Text Navigation
    Plug 'unblevable/quick-scope'

    " Easymotion
    Plug 'easymotion/vim-easymotion'

    " Surround
    Plug 'tpope/vim-surround'

    " Cool Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
    Plug 'junegunn/fzf.vim'

    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/playground'


    " Vista
    Plug 'liuchengxu/vista.vim'

    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'

    " Zen mode
    Plug 'junegunn/goyo.vim'

    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'

    " Interactive code
    Plug 'metakirby5/codi.vim'

    " Better tabline
    Plug 'romgrk/barbar.nvim'

    " undo time travel
    Plug 'mbbill/undotree'

    " auto set indent settings
    Plug 'tpope/vim-sleuth'

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Start Screen
    Plug 'mhinz/vim-startify'

    " Status Line
    Plug 'glepnir/galaxyline.nvim'
    Plug 'kevinhwang91/rnvimr'

    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    Plug 'jreybert/vimagit'

    " Terminal
    Plug 'voldikss/vim-floaterm'

    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    
    " async tasks
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    
    " Swap windows
    Plug 'wesQ3/vim-windowswap'

    " Debugging
    Plug 'puremourning/vimspector'
    Plug 'szw/vim-maximizer'

    Plug 'dense-analysis/ale'

    " Themes
    Plug 'christianchiarulli/nvcode-color-schemes.vim'

    " Magical completion engine
    Plug 'codota/tabnine-vim'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
