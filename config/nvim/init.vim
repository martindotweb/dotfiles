set number relativenumber
syntax enable
set noswapfile
set nobackup
set ruler
set background=dark
set t_Co=256
set encoding=utf-8
set fileencoding=utf-8
set laststatus=0
set cursorline
set colorcolumn=135
set nocompatible
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
set smartindent
set smarttab
set autochdir
set formatoptions-=cro
set hidden
set wrap
set mouse=a
set splitbelow
set splitright
set clipboard=unnamedplus
filetype on
filetype indent on
filetype plugin on

" KEYBINDINGS
imap ii <Esc>

nmap <C-q> :q<CR>
nmap <C-s> :w<CR>
nmap <C-z> :undo<CR>
nmap <C-y> :redo<CR>
nmap <C-f> /
nmap <C-b> :NERDTreeToggle<CR>
nmap <C-g> :FloatermNew<CR>
nmap <C-t> :tabnew<CR>
nmap <C-l> :tabnext<CR>
nmap <C-h> :tabprevious<CR>
nmap <C-w> :tabclose<CR>

" PLUGINS

call plug#begin("/home/martin/.vim/plugged")
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'yggdroot/indentline'
Plug 'neoclide/coc.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'nikvdp/ejs-syntax'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'raimondi/delimitmate'
Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'mxw/vim-jsx'
Plug 'mg979/vim-visual-multi'
call plug#end()

colorscheme elflord

" AIRLINE
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
