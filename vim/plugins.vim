" ========================================= "
call plug#begin('~/.local/share/nvim/plugged')
" Plugin List Start ======================= "

" Added Functionalities
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
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine
Plug 'tomtom/tcomment_vim'                      " Comment out function

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
Plug 'joshdick/onedark.vim'                     " One Dark Theme
Plug 'vim-airline/vim-airline'                  " Bottom toolbar
Plug 'vim-airline/vim-airline-themes'           " Themes for the bottom toolbar
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Extra syntax and highlight for nerdtree files
Plug 'ryanoasis/vim-devicons'                   " Devicons (Always load this last)

" Plugin List End ========================= "
call plug#end()
" ========================================= "

