set nocompatible "don't require vi backwards compatibility 
set nowrap "don't wrap long lines
set tabstop=2 
set backspace=indent,eol,start "allow backspace over everything in
                               "insert mode
set autoindent
set copyindent "new lines follow previos indentation
set number "display line numbers
set shiftwidth=2 
set showmatch "show matching paranthesis
set ignorecase "ignore case 
set smartcase "except if search contains upper case
set smarttab 
set incsearch "incrementally search strings
syn on "syntax
set textwidth=75 "lines don't exceed 75 chars.
set expandtab "expand tabs with spaces -- better plaintext formatting
retab

set title "set the terminal's title
filetype on "detect filetype and apply file specific rules
filetype plugin on
filetype indent on


"expand tabs for python
"if has('autocmd')
"  autocmd filetype python expandtab
"endif

set mouse=a "enable mouse
set pastetoggle=<C-,> "change mode when pasting outside text to
                         "preserve indentation 

"Forcing myself to use hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

"more intelligent up-down motion
"nnoremap j gj
"nnoremap k gk 

"saving one keystroke :-)
nnoremap ; :

"auto-save upon losing focus
au FocusLost * :wa
"custom command for forced formatting
nnoremap <leader>q gqip
"easier than <esc>
inoremap jj <ESC>
inoremap kk <ESC>

"Autocomplete for TeX (mainly)
inoremap $ $$<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

"Remapping 0 behavior
nnoremap 0 0i

"Switch between buffers better in normal/insert modes
nnoremap <C-j> :tabp<Enter>
nnoremap <C-k> :tabn<Enter>
inoremap <C-j> <Esc>:tabp<Enter>
inoremap <C-k> <Esc>:tabn<Enter>

"Share clipboard with OS
set clipboard+=unnamed

"Using wildmenu
set wildmenu
set wildchar=<Tab>
set completeopt=longest,menu,preview
set wildmode=list:longest,list:full
set wildignore=*.swp,*.aux,*.log,*.pdf "ignore when autocompleting wild
                                       "characters
set complete=.,t
set suffixes=.bak,~,.swp,.aux,.log,.dvi,.bbl,.bbg,.out
set clipboard=unnamed

"For todo list. 
"au BufWinLeave *.* mkview "for saving/restoring folds
"au BufWinEnter *.* silent loadview
"au BufRead *.todo set filetype=todo 
"au! Syntax todo source /Users/ananthr/.vim/todo.vim

"Set statusline
set statusline=%<%=[%l,%c%V]\ %p%%\ of\ %L\ lines\ %m%r\ %f\ %y\ \ 
set laststatus=2

"colorscheme
"let g:solarized_termcolors=16
"set background=dark
"colorscheme solarized

"Better tab control
" {Alt + Shift + ]} Switch to the next tab to the right
map <A-}> :tabnext<CR>
map! <A-}> <ESC>:tabnext<CR>i

" {Alt + Shift + [} Switch to the next tab to the left
map <A-{> :tabprevious<CR>
map! <A-{> <ESC>:tabprevious<CR>i

" {Ctrl + Shift + t} Create a new tab
map <C-S-T> :tabnew<CR>
map! <C-S-T> <ESC>:tabnew<CR>

source /Users/ananthr/.vim/ftplugin/vimroom.vim
let g:vimroom_width=100
let g:vimroom_sidebar_height=0
let g:vimroom_min_sidebar_width=0
