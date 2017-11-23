" ========================================= "
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin List Start ======================= "

" Added Functionalities
Plugin 'VundleVim/Vundle.vim'               " This makes VIM awesome
Plugin 'scrooloose/nerdtree'                " Tree file explorer
Plugin 'tpope/vim-fugitive'                 " View any blob, tree, commit, or tag in the repository
Plugin 'kien/ctrlp.vim'                     " Fuzzy file, buffer, mru, tag, etc finder.
Plugin 'mileszs/ack.vim'                    " Word search inside directory
Plugin 'alvan/vim-closetag'                 " Auto close HTML tags
Plugin 'editorconfig/editorconfig-vim'      " Editorconfig
Plugin 'jiangmiao/auto-pairs'               " Auto close quotes, brackets and parenthesis
Plugin 'scrooloose/nerdcommenter'           " Comment out function
Plugin 'Valloric/MatchTagAlways'            " HTML Tag Matcher
Plugin 'airblade/vim-gitgutter'             " Show git difference in the gutter

" Syntax Highlight Plugins
Plugin 'vim-ruby/vim-ruby'                  " Ruby
Plugin 'tpope/vim-rails'                    " Rails
Plugin 'digitaltoad/vim-pug'                " Pug
Plugin 'mxw/vim-jsx'                        " JSX
Plugin 'hail2u/vim-css3-syntax'             " CSS3
Plugin 'jelera/vim-javascript-syntax'       " Javascript
Plugin 'elzr/vim-json'                      " JSON
Plugin 'tpope/vim-haml'                     " Haml, Sass and SCSS

" Party tricks Plugin
Plugin 'severin-lemaignan/vim-minimap'      " Minimap
Plugin 'mhinz/vim-startify'                 " Welcome message

" Design Plugin
Plugin 'crusoexia/vim-monokai'              " Monokai Theme for VIM
Plugin 'vim-airline/vim-airline'            " Bottom toolbar
Plugin 'vim-airline/vim-airline-themes'     " Themes for the bottom toolbar

" Plugin List End ========================= "
call vundle#end()
filetype plugin indent on
" ========================================= "

" Syntax highlighting
syntax enable

" Change mapleader
let mapleader=","

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

" Show when <leader> is toggled
set showcmd

" Activate Monokai Theme
colorscheme monokai

" Show which line you're at
set cursorline

" Setlist Options
nmap <leader>l :set list!<CR>
set listchars=eol:¬,tab:▸▸,trail:~,extends:>,precedes:<,space:·
hi NonText ctermfg=237 guifg=grey23
hi SpecialKey ctermfg=237 guifg=grey23

" Search Settings
set hlsearch
set ignorecase
set smartcase
set incsearch

" Store temporary files in a central spot
let vimtmp = $HOME . '/.tmp/' . getpid()
silent! call mkdir(vimtmp, "p", 0700)
let &backupdir=vimtmp
let &directory=vimtmp

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Enable the style of tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

" Shortcut for Ack
nmap <leader>f :Ack!<space>

" Remap colon to semicolon to avoid using shift too much
map ; :
noremap ;; ;

" Navigate buffers easily
nmap <leader>j :bp!<CR>
nmap <leader>k :bn!<CR>
