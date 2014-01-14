" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree.git'
Bundle 'withgod/vim-sourcepawn.git'
Bundle 'molokai'


filetype plugin indent on

" ---------------------- "
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class   
set background=dark
syntax enable
set t_Co=256
colorscheme molokai
" set rtp+=C:\\Vim\\vim73\\,C:\\Vim\\vim73\\autoload


let mapleader = ","
" display "
"---------"
set showcmd
set showmode
set number
set ruler

" n :NERDTreeToggle<CR>
" imap <F5> <C-N> <C-P>
map <C-N> :NERDTreeToggle<CR>

" search "
"--------"
set incsearch
set hlsearch

" tab "
"-----"
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

" document "
"----------"
set wrap
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]
set autochdir
set autoindent
set textwidth=95
set co=99
set encoding=utf-8
set wm=5
set showbreak=\ \ \ \ \ \ \ \ 
set smartcase

" folding "
" ------- "
nnoremap <Space> za
set expandtab
set ts=8
set sts=4
set shiftwidth=4
set sn
set backspace=indent,eol,start

set history=100000
" matchit "
" ------- "
source $VIMRUNTIME/macros/matchit.vim

" wildmenu
set wmnu
"--------------------------------------------------------------------"
" settings                                                           "
"--------------------------------------------------------------------"
" statusline                                                         "

set laststatus=2





au FileType sourcepawn setlocal makeprg=/path/to/spcomp\ %


" set statusline=%!Pl#Statusline(0,1)

" python "
"--------"
autocmd BufRead *.py set cinwords=if,elif,else,for,while,with,try,except,finally,def,class
autocmd BufRead *.py set textwidth=79
autocmd BufRead *.py let python_highlight_space_errors=1
autocmd BufRead *.py let python_highlight_space_errors=1
autocmd BufRead *.py set omnifunc=pythoncomplete#Complete

" dotfiles "
"----------"
au BufNewFile,BufRead .bashrc,.bash_profile,.bash_aliases,.bash_functions,.profile,.bashcolors set filetype=sh

" html "
"------"
au BufNewFile,BufRead *.html set filetype=htmldjango
au BufNewFile,BufRead *.html set tabstop=4 softtabstop=2 shiftwidth=2 textwidth=0



" mode toggling "
"---------------"

" paste
"set pastetoggle=<leader>p
nnoremap <leader>p :set paste!<cr>
" hlsearch
noremap <leader>h :set hlsearch! hlsearch?<cr>
" line numbers

noremap <leader>n :set nu!<cr>

" split windows "
"---------------"

" switch to window in <direction>
" legend: <C-=ctrl, <S-=shift
nnoremap <C-h> <C-w><Left>
nnoremap <C-j> <C-w><Down>
nnoremap <C-k> <C-w><Up>
nnoremap <C-l> <C-w><Right>
" resize window by 1 or 10 rows
nnoremap <leader>[ <C-w>-
nnoremap <leader>] <C-w>+
nnoremap <leader>[[ 10<C-w>-
nnoremap <leader>]] 10<C-w>+

map <leader>nt :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
"let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1

" -----Command remaps----- "
:command W w
:command WQ wq
:command Wq wq
:command Q q


:nnoremap <leader>b :bnext<CR>
:nnoremap <leader>v :bprevious<CR>

" Auto completion via ctrl-space
set omnifunc=pythoncomplete#Complete
inoremap <Nul> <C-x><C-o>
let NERDLPlace="[>"
let NERDRPlace="<]"     
let NERDDefaultNesting=0

let NERDSpaceDelims=1
let NERDCompactSexyComs=1
