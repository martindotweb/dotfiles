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
map <C-b> :NvimTreeFindFile<CR>
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
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'akinsho/bufferline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'jackiehluo/vim-material'
call plug#end()

" VIM_MATERIAL
" GUI color definitions
"let s:gui00 = "050608"
"let s:gui01 = "14191C"
"let s:gui02 = "546E7A"
"let s:gui03 = "5C7E8C"
"let s:gui04 = "80CBC4"
"let s:gui05 = "C792EA"
"let s:gui06 = "7986CB"
"let s:gui07 = "82B1FF"
"let s:gui08 = "8BD649"
"let s:gui09 = "C3E88D"
"let s:gui0A = "CDD3DE"
"let s:gui0B = "EC5F67"
"let s:gui0C = "F1E655"
"let s:gui0D = "F77669"
"let s:gui0E = "F8E71C"
"let s:gui0F = "FFFFFF"
"
"highlight NvimTreeWinSeparator guifg=#37474F

color material
source ~/.config/nvim/lua/lazy.lua
source ~/.config/nvim/lua/init.lua

let g:coc_global_extensions = [ 'coc-tsserver' ]

let g:astro_typescript = 'enable'
let g:astro_stylus = 'enable'
