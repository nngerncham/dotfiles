" Set leader key to space
let g:mapleader = " "

" moving around
nnoremap j gj
nnoremap k gk

" moving things around
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap J mzJ`z

" navigation
nnoremap ge <S-g>
nnoremap gl $
nnoremap gh 0

vnoremap ge <S-g>
vnoremap gl <S-$>
vnoremap gh 0

" returning to normal
inoremap jk <esc>
vnoremap JK <esc>
tnoremap jk <C-\\><C-n>

" copy/pasting
xnoremap <leader>p "_dP
nnoremap <leader>y "+y
vnoremap <leader>y "+y

" undo
nnoremap U <C-r>

" quickfix
nnoremap co :copen<CR>

" save
inoremap <C-s> <cmd>w<cr>