
" ================================================================================== [Theme] ===== "

" This file is for themes, colors, icons and symbols configuration
" Fore more icons to use you can go to:
" https://www.nerdfonts.com/cheat-sheet

" Colors
colorscheme onedark
hi VertSplit ctermfg=fg ctermbg=bg
hi ColorColumn ctermbg=bg
hi EndOfBuffer ctermfg=bg ctermbg=bg
hi NonText ctermfg=237 guifg=grey23
hi SpecialKey ctermfg=237 guifg=grey23
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

" NERDTree
let g:NERDTreeDirArrowExpandable            = ''
let g:NERDTreeDirArrowCollapsible           = ''

" Airline
let g:airline_theme                       = 'onedark'
let g:airline#extensions#tabline#fnamemod = ':t'

" Indent line
let g:indentLine_char = '│'

" Ale
let g:ale_sign_error    = ''
let g:ale_sign_warning  = ''

" Gitgutter
let g:gitgutter_sign_added              = ''
let g:gitgutter_sign_modified           = ''
let g:gitgutter_sign_removed            = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed   = ''

