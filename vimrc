" pathogen.vim
" execute pathogen#infect()

" plug.vim
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'mattn/emmet-vim'
Plug 'elzr/vim-json'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


set background=dark
set autoindent              " Tells vim to use "autoindent" (that is, use the current line's indent level to set the indent level of new lines).
set autoread                " Watch for file changes
set expandtab               " Spaces are better than a tab character
set hidden
set lazyredraw              " Don't redraw when don't have to
"set mouse=a                 " Enable mouse support in console
set noautowrite             " don't automagically write on :next
set nocompatible            " This setting prevents vim from emulating the original vi's bugs and limitations.
set number                  " line numbers
set ruler                   " show the line number on the bar
set tabstop=4               " Sets up 4-space tabs
set shiftwidth=4            " Tells vi to use 4 spaces when text is indented (auto or with the manual indent adjustments.)
set showcmd                 " This shows what you are typing as a command.  I love this!
set smartcase               " And so is Artificial Intellegence!
set smartindent             " Makes vim attempt to intelligently guess the indent level of any new line based on the previous line, assuming the source file is in a C-like language.
set smarttab
set scrolloff=5             " keep at least 5 lines above/below
set sidescrolloff=5         " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set cmdheight=2             " command line two lines high
set undolevels=1000         " 1000 undos
set updatecount=100         " switch every 100 chars
set complete=.,w,b,u,U,t,i,d    " do lots of scanning on tab completion
set ttyfast                 " we have a fast terminal
set noerrorbells            " No error bells please
set shell=bash
set fileformats=unix
set ff=unix
"set more                   " use more prompt
"set backspace=2            " Got backspace?
"set wildmenu               " Cool tab completion stuff
"set wildmode=list:longest,full
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif     " Remove any trailing whitespace that is in the file
filetype on             " Needed for Syntax Highlighting and stuff
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*
set scrolloff=5             " keep at least 5 lines above/below
set sidescrolloff=5         " keep at least 5 lines left/right

"  searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync

" folding
"set foldmethod=indent
"set foldlevel=1
"set foldclose=all

" syntax
au BufRead,BufNewFile *.json set filetype=json

" Start NERDTree
" autocmd VimEnter * NERDTree
" " Go to previous (last accessed) window.
" autocmd VimEnter * wincmd p
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" jsbeautify
"map <c-f> :call JsBeautify()<cr>
"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

