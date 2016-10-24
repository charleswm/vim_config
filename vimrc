"-----------------------------------------------------------------------------
" Initialize Vundle and plugins
"-----------------------------------------------------------------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'  
Plugin 'powerline/powerline'
Plugin 'tmhedberg/SimpylFold'
" all plugins have to be included before this line
call vundle#end() 

"-----------------------------------------------------------------------------
" Everything else goes after this line
"-----------------------------------------------------------------------------
filetype plugin indent on

syntax on    " Enable sytax processing
 
" Theme
colorscheme solarized8_dark

"-----------------------------------------------------------------------------
" Custom key bindings. 
"-----------------------------------------------------------------------------
let mapleader=","  " leader is comma

" jk to exit Insert Mode 
inoremap jk <Esc>         

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR> 

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

nnoremap <space> za
" split navigations
"" nnoremap <C-J> <C-W><C-J>
"" nnoremap <C-K> <C-W><C-K>
"" nnoremap <C-L> <C-W><C-L>
"" nnoremap <C-H> <C-W><C-H>

let g:SimpylFold_docstring_preview=1

" General
set linebreak    " Break lines at word (requires Wrap lines)
set number    " Show line numbers
"" set showbreak=+++     " Wrap-broken line prefix
set showmatch    " Highlight matching brace
set textwidth=79    " Line wrap (number of cols)
 
" Search
set hlsearch    " Highlight all search results
set ignorecase    " Always case-insensitive
set incsearch    " Searches for strings incrementally
set smartcase    " Enable smart-case search
"                   (requires that ignorecase is also on)
" Folding 
set foldmethod=indent
set foldlevel=99
" Spacing
set autoindent    " Auto-indent new lines
set expandtab    " Use spaces instead of tabs
set shiftwidth=4    " Number of auto-indent spaces
set smartindent    " Enable smart-indent
set smarttab    " Enable smart-tabs
set softtabstop=4    " Number of spaces per Tab when editing
set tabstop=4    " Number of visual spaces per Tab 

" Advanced
set backspace=indent,eol,start    " Backspace behaviour
set cursorline " Highlight current line
set ruler    " Show row and column ruler information
set undolevels=1000    " Number of undo levels
set wildmenu 
