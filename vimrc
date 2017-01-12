""-----------------------------------------------------------------------------
"" Initialize Vundle and plugins
""-----------------------------------------------------------------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'powerline/powerline'
Plugin 'scrooloose/nerdtree'  
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
"" all plugins have to be included before this line
call vundle#end() 
""-----------------------------------------------------------------------------
"" Everything else goes after this line
""-----------------------------------------------------------------------------

""Enable the mouse (for noobs)
" set mouse=a

filetype plugin indent on
syntax on    " Enable sytax processing

"" Theme
colorscheme solarized8_dark

"" Leader is comma
let mapleader = ","  

"" Turn off search highlight
nnoremap <leader> <space> :nohlsearch<CR>

"" Who needs semicolons?
nnoremap ; :

"" Open Nerdtree
map <F2> :NERDTreeToggle<CR>

"" Move vertically by visual line
nnoremap j gj
nnoremap k gk

"" Windows
"" Split navigations
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"" Spacing
set autoindent    " Auto-indent new lines
set expandtab    " Use spaces instead of tabs
set shiftwidth=4    " Number of auto-indent spaces
set smartindent    " Enable smart-indent
set smarttab    " Enable smart-tabs
set softtabstop=4    " Number of spaces per Tab when editing
set tabstop=4    " Number of visual spaces per Tab 

"" Search
set hlsearch    " Highlight all search results
set ignorecase    " Always case-insensitive
set incsearch    " Searches for strings incrementally
set smartcase    " Enable smart-case search

"" Numbering
set rnu
set nu
"" Set timeout for escape key
set timeoutlen=100 ttimeoutlen=100

"" make yank copy to the global system clipboard
set clipboard=unnamed 

set list listchars=tab:»·,trail:·,nbsp:·

"" automatically set paste/nopaste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

"" Scrolling
set scrolloff=10         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

set linebreak    " Break lines at word (requires Wrap lines)
set showmatch    " Highlight matching brace
set textwidth=79    " Line wrap (number of cols)
set backspace=indent,eol,start    " Backspace behaviour
set cursorline " Highlight current line
set ruler    " Show row and column ruler information
set wildmenu 
"" Number of Undos
set undolevels=700
"" Command history length
set history=700

" Powerline setting
set rtp+=/Users/cmorris/.local/lib/python3.5/site-packages/powerline/bindings/vim/
set laststatus=2
set showtabline=1
set noshowmode
set t_Co=256

