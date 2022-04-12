" XDG support
" Via: https://blog.joren.ga/vim-xdg

if empty($MYVIMRC) | let $MYVIMRC = expand('<sfile>:p') | endif

if empty($XDG_CACHE_HOME)  | let $XDG_CACHE_HOME  = $HOME."/.cache"       | endif
if empty($XDG_CONFIG_HOME) | let $XDG_CONFIG_HOME = $HOME."/.config"      | endif
if empty($XDG_DATA_HOME)   | let $XDG_DATA_HOME   = $HOME."/.local/share" | endif

set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after

set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after

let g:netrw_home = $XDG_DATA_HOME."/vim"
call mkdir($XDG_DATA_HOME."/vim/spell", 'p', 0700)
set viewdir=$XDG_DATA_HOME/vim/view | call mkdir(&viewdir, 'p', 0700)

set backupdir=$XDG_CACHE_HOME/vim/backup | call mkdir(&backupdir, 'p', 0700)
set directory=$XDG_CACHE_HOME/vim/swap   | call mkdir(&directory, 'p', 0700)
set undodir=$XDG_CACHE_HOME/vim/undo     | call mkdir(&undodir,   'p', 0700)

if !has('nvim') " Neovim has its own special location
  set viminfofile=$XDG_CACHE_HOME/vim/viminfo
endif

" ---

source $XDG_CONFIG_HOME/vim/basic.vim
source $XDG_CONFIG_HOME/vim/plugins.vim
source $XDG_CONFIG_HOME/vim/extended.vim

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

" Touch file under <cursor>
map <silent> <leader>cf :!touch <c-r><c-p><cr><cr>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
