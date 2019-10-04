
" ================================================================================ [Hotkeys] ===== "

" Change mapleader
let mapleader=","

" Shortcut for NERDTree
map <silent> <C-\> :NERDTreeToggle<CR>

" Shortcut for NERDTree current opened buffer
map <leader>r :NERDTreeFind<cr>

" Shortcut for list characters
nmap <leader>l :set list!<CR>

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Remap colon to semicolon to avoid using shift too much
map ; :
noremap ;; ;

" Navigate buffers easily
nmap <leader>j :bp!<CR>
nmap <leader>k :bn!<CR>

" Close buffers easily
nmap <leader>x :bd!<CR>

" Paste Toggle
set pastetoggle=<F1>

" Text Wrap Toggle
map <F2> :set wrap!<CR>

" Git Blame Toggle
map <F3> :Gblame<CR>

" ALE Toggle
map <F4> :ALEToggle<CR>

" Minimap Toggle
map <F5> :MinimapToggle<CR>

" FZF Directory Search
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" Shortcut for Rubocop
map <leader>t :RuboCop<cr>

" Shortcut for word search inside directory
map <C-f> :CtrlSF<space>

" Shortcut for saving
map <C-s> :w<CR>

" Shortcut for quitting
map <C-q> :q<CR>

" Shorcut for word substitute
nmap <leader>ff :%s/old/new/g

" Switch Panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

