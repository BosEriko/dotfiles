
" ================================================================================== [Theme] ===== "

" This file is for the theme, colors, icons and symbols configuration
" For more icons to use you can go to:
" https://www.nerdfonts.com/cheat-sheet

" True Colors
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Theme
colorscheme onedark
let g:airline_theme = 'onedark'

" Colors
hi VertSplit ctermfg=bg ctermbg=bg
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

" Icons
let g:NERDTreeDirArrowExpandable          = ''
let g:NERDTreeDirArrowCollapsible         = ''
let g:ale_sign_error                      = ''
let g:ale_sign_warning                    = ''
let g:gitgutter_sign_added                = ''
let g:gitgutter_sign_modified             = ''
let g:gitgutter_sign_removed              = ''
let g:gitgutter_sign_removed_first_line   = ''
let g:gitgutter_sign_modified_removed     = ''

" Symbols
let g:indentLine_char = '│'
let g:startify_custom_header =
  \ startify#fortune#cowsay('*','─','│','╭','╮','╯','╰')

