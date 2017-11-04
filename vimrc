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

" Syntax highlighting
syntax enable

" Line numbers
set number
set relativenumber

" Stop line break
set nowrap

" Shortcut for NERDTree
map <silent> <C-\> :NERDTreeToggle<CR>
