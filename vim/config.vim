
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

" Open NERDTree on the right side
let g:NERDTreeWinPos = "right"

" Set theme for bottom toolbar
let g:airline_theme='bubblegum'

" Airline Config
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_branch_prefix     = '⭠'
let g:airline_readonly_symbol   = '⭤'
let g:airline_linecolumn_prefix = '⭡'

" Enable the style of tabs
let g:airline#extensions#tabline#enabled      = 1
let g:airline#extensions#tabline#left_sep     = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁'

" 2 spaces only for indentation
set tabstop=2
set shiftwidth=2
set expandtab

" Show when <leader> is toggled
set showcmd

" Activate Space vim theme
colorscheme space-vim-dark

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

" Enable the style of tabs
let g:airline#extensions#tabline#enabled = 1

" Show hidden files in NERDTree by default
let NERDTreeShowHidden=1

" Paste Toggle
set pastetoggle=<F1>

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

" Disable vim-json hidden quotes
let g:vim_json_syntax_conceal = 0

" Folder icons for NERDTree
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" Set line length
set colorcolumn=100

