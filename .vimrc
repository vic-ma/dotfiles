syntax enable

set nocompatible
colorscheme solarized "set colorscheme
set bg=light "set solarized light

set relativenumber "show line numbers as relative line numbers
set number "show current line as absolute line number
set cursorline "highlight current line

set tabstop=4 "spaces per tab already in file
set softtabstop=4 "spaces printed per tab key press
set shiftwidth=4 "spaces per visual shift
set expandtab "tabs are spaces
filetype plugin indent on "filetype specific settings

" set textwidth=100 "set maximum line length 
" autocmd FileType text setlocal formatoptions+=a
" autocmd FileType text setlocal textwidth=80

set hidden "don't unload buffers when abandoned
set lazyredraw "don't redraw during macros
set ttimeoutlen=0 "don't wait after <Esc>

set notimeout "never time out mappings
set ttimeout
nnoremap q: :q
nnoremap p ]p
nnoremap tg gt
nnoremap Tg gT

set ignorecase "ignore case while searching
set smartcase "ignore ignorecase if pattern contians a capital
set incsearch "search while entering pattern
set nohlsearch "don't highlight all

set nowrap "disable word wrap
set sidescroll=1 "minimum number of columns to scroll

set wildmode=longest,list "bash style tab completion
set wildignorecase "ignore case for  tab completion

set showcmd "show incomplete command compositions

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o "disable autocomment

"Don't show swap file warnings
set shortmess+=A

"Java compilation
map <F1> :w<Enter>:!javac -Xlint *.java<Enter><Enter>:!java %:r<Enter>

"C compilation
map <F2> :w<Enter>:!gcc -Wall -g *.c<Enter><Enter>:!./a.out<Enter>

"Python compilation
map <F3> :w<Enter>:!python3 *.py<Enter>

"LaTeX compilation
map <F5> :w<Enter>:!pdflatex *.tex<Enter><Enter>

"Run Ctags
map <F8> :!ctags -f $HOME/jfr-tests/tags -R $HOME/jfr-tests/src<Enter><Enter>
map <F9> :!ctags -f $HOME/container-jfr/tags -R $HOME/container-jfr/src && ctags -f $HOME/aazores-cjfr/tags -R $HOME/aazores-cjfr/src && ctags -f $HOME/upstream-cjfr/tags -R $HOME/upstream-cjfr/src && ctags -f $HOME/container-jfr-core/tags -R $HOME/container-jfr-core/src<Enter><Enter>
map <F10> :!ctags -f $HOME/graal/tags -R $HOME/graal/* && ctags -f $HOME/upstream-graal/tags -R $HOME/upstream-graal/* <Enter><Enter>

"Clear
map <F12> :!clear<Enter><Enter>

"Smooth scroll
noremap <silent> <c-u> :call smooth_scroll#up(          &scroll,    5,  1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(        &scroll,    5,  1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(          &scroll*2,  3,  1)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(        &scroll*2,  3,  1)<CR>

"Set tags location
set tags=./tags;$HOME,$HOME/graal/tags,$HOME/jdk/src/jdk.jfr/share/classes/jdk/jfr/tags,$HOME/container-jfr-core/tags

"Set auto change directory
set autochdir
