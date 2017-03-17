"""""""""""""""
"""""""""""""""
"My vimrc!
"""""""""""""""
"""""""""""""""
set nocompatible "Always put this first

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'powerline/powerline'
Plug 'scrooloose/nerdtree'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-surround'
"Plug 'vim-scripts/dbext.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'Raimondi/delimitMate' "autocomplete parens/commas/etc
Plug 'lifepillar/vim-solarized8'
Plug 'jpalardy/vim-slime'
call plug#end()
"
"" Leader is comma
let mapleader = ","

""Enable the mouse (for noobs)
" set ttyfast
" set mouse=a
" set ttymouse=xterm2

"" Theme
colorscheme solarized8_dark

"" Turn off search highlight
nnoremap <leader> <space> :nohl<CR>

"slime settings
let g:slime_target = "tmux"
let g:slime_python_ipython = 1
let g:slime_paste_file = tempname()
"" Open Nerdtree
map <F2> :NERDTreeToggle<CR>

"" CtrlP mapping
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" Move vertically by visual line
nnoremap j gj
nnoremap k gk

"" Windows
"" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
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

""No noise when error
set visualbell

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
set scrolloff=10         "Start scrolling when we're n lines away from margins
set sidescrolloff=15
set sidescroll=1

set linebreak    " Break lines at word (requires Wrap lines)
set showmatch    " Highlight matching brace
set textwidth=79    " Line wrap (number of cols)
set backspace=indent,eol,start    " Backspace behaviour
set cursorline " Highlight current line
set ruler    " Show row and column ruler information
set wildmenu
set nofoldenable
"" Number of Undos
set undolevels=700
"" Command history length
set history=700
" Powerline setting
set rtp+=~/Applications/anaconda/lib/python3.5/site-packages/powerline/bindings/vim
set laststatus=2
set showtabline=1
set noshowmode
set t_Co=256

