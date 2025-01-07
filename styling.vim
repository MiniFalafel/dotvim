" VISUALS
" spacing
set cmdheight=1
set showtabline=1
" visibility
set number
set wrap!
set scrolloff=8
set sidescrolloff=8
set sidescroll=1
set foldcolumn=1
" disable visual beep
set t_vb=
" colors

set termguicolors
colorscheme chewy

syntax on
set hlsearch
set cursorline
" cursor shape
let &t_EI = "\033[2 q" " NORMAL  █
let &t_SI = "\033[5 q" " INSERT  |
