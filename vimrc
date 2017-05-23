source ~/.vim/plugins.vim
source ~/.vim/basic.vim
source ~/.vim/extended.vim

" Watch for file changes
set autoread

" Don't redraw when don't have to
set lazyredraw

" Enable mouse support in console
set mouse=a

" don't automagically write on :next
set noautowrite

" This setting prevents vim from emulating the original vi's bugs and limitations.
set nocompatible

" line numbers
set number

" show the line number on the bar
set ruler

" This shows what you are typing as a command.  I love this!
set showcmd

" And so is Artificial Intellegence!
set smartcase
set smarttab

" 1000 undos
set undolevels=1000

" switch every 100 chars
set updatecount=100

" do lots of scanning on tab completion
set complete=.,w,b,u,U,t,i,d

" we have a fast terminal
set ttyfast

" No error bells please
set noerrorbells

" use more prompt
"set more

" Got backspace?
"set backspace=2

" Shortcut to rapidly toggle `set list`
nmap <leader>; :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
