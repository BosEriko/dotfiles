
" ================================================================================ [autocmd] ===== "

" vim
autocmd BufWritePost ~/.dotfiles/vim/modules/* !~/.dotfiles/vim/generate.sh

" tmux
autocmd BufWritePost ~/.dotfiles/tmux/modules/* !~/.dotfiles/tmux/generate.sh

" zsh
autocmd BufWritePost ~/.dotfiles/zsh/modules/* !~/.dotfiles/zsh/generate.sh

