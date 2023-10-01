set number rnu
set t_Co=256
set termguicolors
set colorcolumn=130
set laststatus=0
set smartindent
set autoindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set showtabline=2
set formatoptions-=cro
set wrap
set mousemoveevent
set hidden
set encoding=utf-8
set fileencoding=utf-8
set ruler
set mouse=a
set noswapfile
set nobackup
set cursorline
set encoding=UTF-8
set background=dark
syntax on
filetype on
filetype indent on
filetype plugin on
set backspace=indent,eol,start
set ttyfast

autocmd FileChangedShell * let v:fcs_choice = 'reload'

imap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" KEYBINDINGS

imap ii <Esc>

map <C-t> :tabnew<CR>
map <C-w> :tabclose<CR>
map <A-n> :tabnext<CR>
map <A-p> :tabprevious<CR>
map <C-s> :w<CR>
map <C-q> :q<CR>
map <C-f> /
map <C-z> :undo<CR>
map <C-y> :redo<CR>
map <C-b> :NvimTreeToggle<CR>
map <Tab> :Prettier<CR>

" PLUGINS

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'raimondi/delimitmate'
Plug 'neoclide/coc.nvim'
Plug 'Exafunction/codeium.vim'
Plug 'mg979/vim-visual-multi'
Plug 'mxw/vim-jsx'
Plug 'sheerun/vim-polyglot'
Plug 'kien/rainbow_parentheses.vim'
Plug 'prettier/vim-prettier'
Plug 'wuelnerdotexe/vim-astro'
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
Plug 'williamboman/mason.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'lewis6991/impatient.nvim'
Plug 'shellRaining/hlchunk.nvim'
Plug 'NvChad/nvterm'
Plug 'glepnir/dashboard-nvim'
call plug#end()

color nightfly
source ~/.config/nvim/lua/lazy.lua
source ~/.config/nvim/lua/init.lua

let g:coc_global_extensions = [ 'coc-tsserver' ]

let g:astro_typescript = 'enable'
let g:astro_stylus = 'enable'
