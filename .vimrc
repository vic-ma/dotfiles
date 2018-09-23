syntax enable

colorscheme solarized "set colorscheme
call togglebg#map("<F5>") "enable solarized light/dark toggle
set bg=light "set solarized light
set guifont=Inconsolata\ 16 "set gvim font

set relativenumber "show line numbers as relative line numbers
set number "show current line as absolute line number
set cursorline "highlight current line

set tabstop=4 "spaces per tab already in file
set softtabstop=4 "spaces printed per tab key press
set shiftwidth=4 "spaces per visual shift
set expandtab "tabs are spaces
filetype plugin indent on "filetype specific settings

set hidden "don't unload buffers when abandoned
set lazyredraw "don't redraw during macros
set ttimeoutlen=0 "don't wait after <Esc>

set notimeout "never time out mappings
set ttimeout
nnoremap q: <Nop>
nnoremap p ]p

set ignorecase "ignore case while searching
set smartcase "ignore ignorecase if pattern contians a capital
set incsearch "search while entering pattern

set nowrap "disable word wrap
set sidescroll=1 "minimum number of columns to scroll

set wildmode=longest,list "bash style tab completion
set wildignorecase "ignore case for  tab completion

set showcmd "show incomplete command compositions
