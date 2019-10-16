
" ================================================================================== [Theme] ===== "

" Fore more icons to use you can go to:
" https://www.nerdfonts.com/cheat-sheet

" NERDTree
let g:NERDTreeWinPos = "right"
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeMinimalUI=1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" Airline
let g:airline_theme             = 'onedark'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline#extensions#tabline#enabled = 1

" Colorscheme
colorscheme onedark
highlight EndOfBuffer ctermfg=bg ctermbg=bg

" FZF
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

