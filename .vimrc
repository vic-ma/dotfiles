syntax enable

colorscheme solarized "set colorscheme
call togglebg#map("<F12>") "enable solarized light/dark toggle
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

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o "disable autocomment

"Ctags
set tags=./tags;$HOME/Projects

"vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>

"Java compilation
map <F1> :w<Enter>:!javac *.java<Enter><Enter>:!java %:r<Enter>

"C compilation
map <F2> :w<Enter>:!gcc -Wall -g *.c<Enter><Enter>:!./a.out<Enter>

"LaTeX compilation
map <F5> :w<Enter>:!pdflatex *.tex<Enter><Enter>

"Clear terminal
map <F9> :!rm a.out<Enter><Enter>:!clear<Enter><Enter>

autocmd FileType c setlocal ts=2 sts=2 sw=2 cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1

