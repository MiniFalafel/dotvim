" PLUGINS
set modifiable

" Plug auto-loading
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugin list
call plug#begin()

" fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Asynchronus Lint Engine (for LSP)
Plug 'dense-analysis/ale'

call plug#end()

" PLUGIN OPTIONS
" fzf (adjust select actions)
let g:fzf_action = { 'enter': 'tabe', 'ctrl-o': 'e' }

" ALE
" do hover and detail in floating windows
let g:ale_hover_to_floating_preview = 1
let g:ale_detail_to_floating_preview = 1
let g_ale_floating_preview = 1
" make popups look nicer
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']
" enable auto completion
let g:ale_completion_enabled = 1
