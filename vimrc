" ======================================== "
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin List Start

Plugin 'scrooloose/nerdtree' " Tree file explorer

" Plugin List End
call vundle#end()
filetype plugin indent on
" ======================================== "

" Don't bother with vi compatibility
set nocompatible

" Syntax highlighting
syntax enable

" Line numbers
set number
set relativenumber

" Stop line break
set nowrap

" NERDTree on startup
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
