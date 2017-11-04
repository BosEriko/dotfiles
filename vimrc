" ======================================== "
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin List Start

Plugin 'scrooloose/nerdtree' " Tree file explorer
Plugin 'vim-airline/vim-airline' " Bottom toolbar
Plugin 'vim-airline/vim-airline-themes' " Themes for the bottom toolbar
Plugin 'tpope/vim-fugitive' " View any blob, tree, commit, or tag in the repository

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

" Set theme for bottom toolbar
let g:airline_theme='bubblegum'

" Add arrows to the bottom toolbar
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''
