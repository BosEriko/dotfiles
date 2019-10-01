
" ================================================================================= [Config] ===== "

" Set utf-8
set encoding=utf-8

" Backspace Fix
set backspace=indent,eol,start

" Syntax highlighting
if !exists("g:syntax_on")
  syntax enable
endif

" Line numbers
set number
set relativenumber

" Use system clipboard
set clipboard=unnamed

" Stop line break
set nowrap

" 2 spaces only for indentation
set tabstop=2
set shiftwidth=2
set expandtab

" Show when <leader> is toggled
set showcmd

" Show which line you're at
set cursorline

" Setlist Options
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

" Show hidden files in NERDTree by default
let NERDTreeShowHidden=1

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

" Disable vim-json hidden quotes
let g:vim_json_syntax_conceal = 0

" Set line length
set colorcolumn=100

