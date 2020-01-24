
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

" Remove vertical Split Character
set fillchars=""

" Initialize FZF
set rtp+=~/.fzf

" Set line length
set colorcolumn=100

" NERDTree and Startify at startup
autocmd VimEnter *
  \   if !argc()
  \ |   Startify
  \ |   NERDTree
  \ |   wincmd w
  \ | endif

" NERDTree
let g:NERDTreeWinPos                        = "right"
let NERDTreeMinimalUI                       = 1
let NERDTreeShowHidden                      = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose        = 1

" Airline
let g:airline_enable_branch               = 1
let g:airline_enable_syntastic            = 1
let g:airline#extensions#tabline#enabled  = 1

" Startify
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
let g:startify_change_to_dir  = 0

" Workspace
let g:workspace_session_directory     = $HOME . '/.vim/workspace/sessions'
let g:workspace_undodir               = $HOME . '/.vim/workspace/undodir'
