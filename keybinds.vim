" KEYMAPS
" leader key actions
let mapleader=" "
let localleader=" "

" system copy paste
noremap <leader>y :silent w !wl-copy<cr>
noremap <leader>p :read !wl-paste<cr>

" Window creation/exit
noremap <leader>v :vsplit<cr>
noremap <leader>h :split<cr>
noremap <leader>w :q<cr>
noremap <leader>q :q!<cr>

" toggle things
noremap <leader>th :set hlsearch!<cr>
noremap <leader>tn :set relativenumber!<cr>

" preserve buffer paste (super cool)
xnoremap <leader>P "_dP

" ==> VISUAL <==
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

" ==> INSERT MODE <==
" Leave insert mode
inoremap jk <esc>
" File saving
inoremap <C-s> <esc>:w<cr>


" ==> NORMAL MODE <==
" File saving
nnoremap <C-s> :w<cr>

" ALE LSP keybinds
nnoremap gd :ALEGoToDefinition<cr>
nnoremap gl :ALEDetail<cr>
nnoremap gk :ALEHover<cr>
nnoremap <f2> :ALERename<cr>
" auto complete navigation
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"

" Window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Window resizing
nnoremap <C-S-Up> :resize +2<cr>
nnoremap <C-S-Down> :resize -2<cr>
nnoremap <C-S-Left> :vertical resize -2<cr>
nnoremap <C-S-Right> :vertical resize +2<cr>

" Tab navigation
nnoremap <A-a> :tabprevious<cr>
nnoremap <A-s> :tabnext<cr>

" File finding
nnoremap <leader>e :Lexplore 20<cr>
nnoremap <leader>f :FZF<cr>
