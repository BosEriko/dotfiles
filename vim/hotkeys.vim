
" ================================================================================ [Hotkeys] ===== "

" Change mapleader
let mapleader=","

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Remap colon to semicolon to avoid using shift too much
map ; :
noremap ;; ;

" Switch Panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Control Shortcuts
map <silent> <C-\> :NERDTreeToggle<CR>
map <silent> <C-m> :NERDTreeFind<CR>
map <silent> <C-h> :bp!<CR>
map <silent> <C-l> :bn!<CR>
map <silent> <C-w> :bd<CR>
map <silent> <C-q> :q<CR>
map <silent> <C-s> :w<CR>
map <silent> <C-/> :TComment<CR>
map <silent> <C-k> :!less ~/dotfiles/vim/hotkeys.vim<CR>
map <C-f> :CtrlSF<space>
nmap <leader>ff :%s/old/new/g
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" Toggle Shortcuts
nmap <leader>l :set list!<CR>
nmap <leader>m :MinimapToggle<CR>
nmap <leader>r :RuboCop<CR>
nmap <leader>a :ALEToggle<CR>
nmap <leader>w :set wrap!<CR>
nmap <leader>g :Gblame<CR>
nmap <leader>n :noh<CR>
set pastetoggle=<leader>p

