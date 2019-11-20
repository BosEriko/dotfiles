
" ================================================================================ [Hotkeys] ===== "

" Change mapleader
let mapleader=";"

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Control Shortcuts
nnoremap <silent> <C-\> :NERDTreeToggle<CR>
nnoremap <silent> <C-t> :NERDTreeFind<CR>
nnoremap <silent> <C-h> :bp!<CR>
nnoremap <silent> <C-l> :bn!<CR>
nnoremap <silent> <C-x> :bd<CR>
nnoremap <silent> <C-q> :q<CR>
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-c> :TComment<CR>
nnoremap <silent> <C-k> :!cat ~/dotfiles/vim/modules/hotkeys.vim<CR>
nnoremap <silent> <C-b> :let @+ = expand("%")<CR>
nnoremap <C-f> :CtrlSF<space>
nnoremap <C-g> :%s/old/new/g
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" Leader Shortcuts
nnoremap <silent> <leader>l :set list!<CR>
nnoremap <silent> <leader>r :RuboCop<CR>
nnoremap <silent> <leader>a :ALEToggle<CR>
nnoremap <silent> <leader>w :set wrap!<CR>
nnoremap <silent> <leader>g :Gblame<CR>
nnoremap <silent> <leader>n :noh<CR>
nnoremap <silent> <leader>s :Startify<CR>
nnoremap <silent> <leader>d :Dash!<CR>
nnoremap <silent> <leader>e :PlugInstall!<CR>
nnoremap <silent> <leader>c :CocInstall<CR>
set pastetoggle=<leader>p

