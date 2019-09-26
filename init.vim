
" ========================================= "
call plug#begin('~/.local/share/nvim/plugged')
" Plugin List Start ======================= "

" Added Functionalities
Plug 'VundleVim/Vundle.vim'                     " This makes VIM awesome
Plug 'scrooloose/nerdtree'                      " Tree file explorer
Plug 'tpope/vim-fugitive'                       " View any blob, tree, commit, or tag in the repository
Plug 'junegunn/fzf'                             " FZF Search
Plug 'junegunn/fzf.vim'                         " FZF.vim Search
Plug 'dyng/ctrlsf.vim'                          " Word search inside directory
Plug 'alvan/vim-closetag'                       " Auto close HTML tags
Plug 'editorconfig/editorconfig-vim'            " Editorconfig
Plug 'jiangmiao/auto-pairs'                     " Auto close quotes, brackets and parenthesis
Plug 'scrooloose/nerdcommenter'                 " Comment out function
Plug 'Valloric/MatchTagAlways'                  " HTML Tag Matcher
Plug 'airblade/vim-gitgutter'                   " Show git difference in the gutter
Plug 'mattn/emmet-vim'                          " Emmet for VIM (Provides support for expanding abbreviations)
Plug 'easymotion/vim-easymotion'                " Jump anywhere easily
Plug 'yggdroot/indentline'                      " Indent lines
Plug 'w0rp/ale'                                 " Check syntax in Vim asynchronously
Plug 'ngmy/vim-rubocop'                         " The Vim RuboCop plugin runs RuboCop and displays the results in Vim.
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Extra syntax and highlight for nerdtree files

" Syntax Highlight Plugins
Plug 'vim-ruby/vim-ruby'                        " Ruby
Plug 'tpope/vim-rails'                          " Rails
Plug 'digitaltoad/vim-pug'                      " Pug
Plug 'mxw/vim-jsx'                              " JSX
Plug 'hail2u/vim-css3-syntax'                   " CSS3
Plug 'jelera/vim-javascript-syntax'             " Javascript
Plug 'elzr/vim-json'                            " JSON
Plug 'tpope/vim-haml'                           " Haml, Sass and SCSS
Plug 'slim-template/vim-slim'                   " Slim
Plug 'elixir-lang/vim-elixir'                   " Elixir
Plug 'leafgarland/typescript-vim'               " Typescript
Plug 'posva/vim-vue'                            " Vue
Plug 'briancollins/vim-jst'                     " JST/EJS
Plug 'dart-lang/dart-vim-plugin'                " Dart
Plug 'hiukkanen/vim-hamlc'                      " hamlc
Plug 'kchmck/vim-coffee-script'                 " CoffeeScript

" Party tricks Plugin
Plug 'severin-lemaignan/vim-minimap'            " Minimap
Plug 'mhinz/vim-startify'                       " Welcome message

" Design Plugin
Plug 'vim-airline/vim-airline'                  " Bottom toolbar
Plug 'vim-airline/vim-airline-themes'           " Themes for the bottom toolbar
Plug 'ryanoasis/vim-devicons'                   " Devicons (Always load this last)

" Plugin List End ========================= "
call plug#end()
" ========================================= "

" Set utf-8
set encoding=utf-8

" Backspace Fix
set backspace=indent,eol,start

" Syntax highlighting
if !exists("g:syntax_on")
  syntax enable
endif

" Change mapleader
let mapleader=","

" Line numbers
set number
set relativenumber

" Stop line break
set nowrap

" Shortcut for NERDTree
map <silent> <C-\> :NERDTreeToggle<CR>

" Shortcut for NERDTree current opened buffer
map <leader>r :NERDTreeFind<cr>

" Set theme for bottom toolbar
let g:airline_theme='bubblegum'

" Airline Config
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1

" 2 spaces only for indentation
set tabstop=2
set shiftwidth=2
set expandtab

" Show when <leader> is toggled
set showcmd

" Activate Koehler Theme
colorscheme koehler

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
let g:airline#extensions#tabline#enabled      = 1

" Remap colon to semicolon to avoid using shift too much
map ; :
noremap ;; ;

" Navigate buffers easily
nmap <leader>j :bp!<CR>
nmap <leader>k :bn!<CR>

" Close buffers easily
nmap <leader>x :bd!<CR>

" Show hidden files in NERDTree by default
let NERDTreeShowHidden=1

" Paste Toggle
set pastetoggle=<F1>

" Text Wrap Toggle
map <F2> :set wrap!<CR>

" Git Blame Toggle
map <F3> :Gblame<CR>

" ALE Toggle
map <F4> :ALEToggle<CR>

" Minimap Toggle
map <F5> :MinimapToggle<CR>

" NERDTree and Startify at startup
autocmd VimEnter *
  \   if !argc()
  \ |   Startify
  \ |   NERDTree
  \ |   wincmd w
  \ | endif

" Startify quote's speech bubble
let g:startify_custom_header =
  \ startify#fortune#cowsay('*','═','║','╔','╗','╝','╚')

" Startify start at 0
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')

" Don't change directory on startify
let g:startify_change_to_dir = 0

" Vertical split bar design
set fillchars=""
hi VertSplit ctermfg=DarkGray ctermbg=DarkGray

" Initialize FZF
set rtp+=~/.fzf

" FZF Directory Search
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" FZF Color Scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Shortcut for Rubocop
map <leader>t :RuboCop<cr>

" Shortcut for word search inside directory
map <C-f> :CtrlSF<space>

" Shorcut for word substitute
nmap <leader>ff :%s/old/new/g

" Switch Panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Disable vim-json hidden quotes
let g:vim_json_syntax_conceal = 0

" Folder icons for NERDTree
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
