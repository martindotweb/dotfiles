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

imap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" KEYBINDINGS

imap ii <Esc>

map <C-t> :tabnew<CR>
map <C-w> :tabclose<CR>
map <A-Right> :tabnext<CR>
map <A-Left> :tabprevious<CR>
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
Plug 'kien/rainbow_parentheses.vim'
Plug 'prettier/vim-prettier'
Plug 'wuelnerdotexe/vim-astro'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'NvChad/nvterm'
Plug 'Shatur/neovim-ayu'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

color ayu-dark
source ~/.config/nvim/lua/lazy.lua
source ~/.config/nvim/lua/init.lua

let g:coc_global_extensions = [ 'coc-tsserver' ]

let g:astro_typescript = 'enable'
let g:astro_stylus = 'enable'
