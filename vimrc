" ======================================== "
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin List Start

Plugin 'VundleVim/Vundle.vim'               " This makes VIM awesome
Plugin 'scrooloose/nerdtree'                " Tree file explorer
Plugin 'vim-airline/vim-airline'            " Bottom toolbar
Plugin 'vim-airline/vim-airline-themes'     " Themes for the bottom toolbar
Plugin 'tpope/vim-fugitive'                 " View any blob, tree, commit, or tag in the repository
Plugin 'kien/ctrlp.vim'                     " Fuzzy file, buffer, mru, tag, etc finder.
Plugin 'mileszs/ack.vim'                    " Word search inside directory
Plugin 'mhinz/vim-startify'                 " Welcome message
Plugin 'digitaltoad/vim-pug'                " Pug syntax highlighting
Plugin 'alvan/vim-closetag'                 " Auto close HTML tags
Plugin 'editorconfig/editorconfig-vim'      " Editorconfig
Plugin 'tpope/vim-haml'                     " Vim runtime files for Haml, Sass, and SCSS
Plugin 'jiangmiao/auto-pairs'               " Auto close quotes, brackets and parenthesis
Plugin 'mxw/vim-jsx'                        " JSX syntax highlighting
Plugin 'hail2u/vim-css3-syntax'             " CSS3 syntax highlighting
Plugin 'jelera/vim-javascript-syntax'       " Javascript syntax highlighting
Plugin 'elzr/vim-json'                      " JSON syntax highlighting
Plugin 'vim-ruby/vim-ruby'                  " Ruby syntax highlighting
Plugin 'tpope/vim-rails'                    " Ruby on Rails support

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

" Shortcut for ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" 2 spaces only for indentation
set tabstop=2
set shiftwidth=2
set expandtab
