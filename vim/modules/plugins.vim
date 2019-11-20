" ========================================= "
call plug#begin('~/.local/share/nvim/plugged')
" Plugin List Start ======================= "

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine

" Functionalities
Plug 'scrooloose/nerdtree'                      " Tree file explorer
Plug 'tpope/vim-fugitive'                       " View any blob, tree, commit, or tag in the repository
Plug 'junegunn/fzf'                             " FZF Search
Plug 'junegunn/fzf.vim'                         " FZF.vim Search
Plug 'dyng/ctrlsf.vim'                          " Word search inside directory
Plug 'alvan/vim-closetag'                       " Auto close HTML tags
Plug 'editorconfig/editorconfig-vim'            " Editorconfig
Plug 'jiangmiao/auto-pairs'                     " Auto close quotes, brackets and parenthesis
Plug 'Valloric/MatchTagAlways'                  " HTML Tag Matcher
Plug 'airblade/vim-gitgutter'                   " Show git difference in the gutter
Plug 'mattn/emmet-vim'                          " Emmet for VIM (Provides support for expanding abbreviations)
Plug 'easymotion/vim-easymotion'                " Jump anywhere easily
Plug 'yggdroot/indentline'                      " Indent lines
Plug 'w0rp/ale'                                 " Check syntax in Vim asynchronously
Plug 'ngmy/vim-rubocop'                         " The Vim RuboCop plugin runs RuboCop and displays the results in Vim.
Plug 'tomtom/tcomment_vim'                      " Comment out function
Plug 'terryma/vim-multiple-cursors'             " Multiple Cursors
Plug 'rizzatti/dash.vim'                        " API Lookup

" Syntax Highlight
Plug 'sheerun/vim-polyglot'                     " Language Pack
Plug 'hiukkanen/vim-hamlc'                      " HAMLC

" Party tricks Plugin
Plug 'mhinz/vim-startify'                       " Welcome message

" Design Plugin
Plug 'joshdick/onedark.vim'                     " One Dark Theme
Plug 'vim-airline/vim-airline'                  " Bottom toolbar
Plug 'vim-airline/vim-airline-themes'           " Themes for the bottom toolbar
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Extra syntax and highlight for nerdtree files
Plug 'ryanoasis/vim-devicons'                   " Devicons (Always load this last)

" Plugin List End ========================= "
call plug#end()
" ========================================= "

" ========================================================================= [COC Extensions] ===== "
let g:coc_global_extensions = [
  \ 'coc-prettier'
  \ ]

