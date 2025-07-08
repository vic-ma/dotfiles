" time out on key codes
set notimeout
set ttimeout

" handle command typos
nnoremap q: :q
nnoremap p ]p
nnoremap tg gt
nnoremap Tg gT

set expandtab             " Use spaces instead of tabs
set shiftwidth=4          " Indent size
set softtabstop=4         " Tab key feels like 4 spaces

set ignorecase            " ignore case while searching
set smartcase             " ignore ignorecase if pattern contians a capital
set incsearch             " search while entering pattern
set nohlsearch            " don't highlight all

set nowrap                " disable word wrap
set sidescroll=1          " minimum number of columns to scroll

set wildmode=longest,list " bash style tab completion
set wildignorecase        " ignore case for  tab completion

set showcmd               " show incomplete command compositions

set number                " Use absolute number on current line
set relativenumber        " Use relative number on other lines

syntax on                 " Enable syntax highlighting

set tags=./tags;,tags     " Set tags locations

nmap Y y$
