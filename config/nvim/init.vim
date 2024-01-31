set number rnu
set smartindent
set autoindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set showtabline=2
set formatoptions-=cro
set wrap
set hidden
set encoding=utf-8
set fileencoding=utf-8
set ruler
set mouse=a
set cursorline
filetype on
filetype indent on
filetype plugin on
set backspace=indent,eol,start
set ttyfast
set iskeyword+=-
set noswapfile
set nobackup

imap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" KEYBINDINGS

imap ii <Esc>

map <C-t> :tabnew<CR>
map <C-w> :bd<CR>
map <A-Right> :BufferLineCycleNext<CR>
map <A-Left> :BufferLineCyclePrev<CR>
map <C-s> :w<CR>
map <C-q> :q<CR>
map <C-f> /
map <C-p> :Telescope find_files<CR>
map <C-r> :Telescope live_grep<CR>
map <C-z> :undo<CR>
map <C-y> :redo<CR>
map <C-b> :NvimTreeToggle<CR>
map <Tab> :Prettier<CR>

" PLUGINS

call plug#begin('~/.vim/plugged')
Plug 'lewis6991/impatient.nvim'
Plug 'scrooloose/syntastic'
Plug 'raimondi/delimitmate'
Plug 'neoclide/coc.nvim'
Plug 'Exafunction/codeium.vim'
Plug 'mg979/vim-visual-multi'
Plug 'mxw/vim-jsx'
Plug 'kien/rainbow_parentheses.vim'
Plug 'prettier/vim-prettier'
Plug 'wuelnerdotexe/vim-astro'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'NvChad/nvterm'
Plug 'yuezk/vim-js'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'dstein64/vim-startuptime'
Plug 'felipeagc/fleet-theme-nvim'
Plug 'folke/tokyonight.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'nvim-lualine/lualine.nvim'
call plug#end()

color tokyonight-night
source ~/.config/nvim/lua/lazy.lua
source ~/.config/nvim/lua/init.lua

let g:coc_global_extensions = [ 'coc-tsserver' ]

let g:astro_typescript = 'enable'
let g:astro_stylus = 'enable'
