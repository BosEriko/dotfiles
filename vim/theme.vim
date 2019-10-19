
" ================================================================================== [Theme] ===== "

" Fore more icons to use you can go to:
" https://www.nerdfonts.com/cheat-sheet

" NERDTree
let g:NERDTreeWinPos                        = "right"
let g:NERDTreeDirArrowExpandable            = ''
let g:NERDTreeDirArrowCollapsible           = ''
let NERDTreeMinimalUI                       = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose        = 1

" Airline
let g:airline_theme                       = 'onedark'
let g:airline_enable_branch               = 1
let g:airline_enable_syntastic            = 1
let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Colorscheme
colorscheme onedark
highlight EndOfBuffer ctermfg=bg ctermbg=bg

" Ale
let g:ale_sign_error    = ''
let g:ale_sign_warning  = ''

" Gitgutter
let g:gitgutter_sign_added              = ''
let g:gitgutter_sign_modified           = ''
let g:gitgutter_sign_removed            = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed   = ''

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

" Colorcolumn Color
highlight ColorColumn ctermbg=235

