" Vundle Start
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin List Start

Plugin 'VundleVim/Vundle.vim'

" Plugin List End
call vundle#end()
filetype plugin indent on
" Vundle End

" Enable syntax highlighting
syntax on

" Display line numbers on the left
set relativenumber

" Reverse the funcionatilies of colon and semicolon
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Disable Swapfiles
set nobackup
set noswapfile
