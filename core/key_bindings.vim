" Information
" LAST UPDATED: 10/09/2020
"
"  ____  __.             __________.__            .___.__
" |    |/ _|____ ___.__. \______   \__| ____    __| _/|__| ____    ____  ______
" |      <_/ __ <   |  |  |    |  _/  |/    \  / __ | |  |/    \  / ___\/  ___/
" |    |  \  ___/\___  |  |    |   \  |   |  \/ /_/ | |  |   |  \/ /_/  >___ \
" |____|__ \___  > ____|  |______  /__|___|  /\____ | |__|___|  /\___  /____  >
"         \/   \/\/              \/        \/      \/         \//_____/     \/
"
" Configuration file for key-remapping in Neovim.

" =======================================================================
"                                 Leader
" =======================================================================
" Set leader key
let g:mapleader = "\<Space>"



" =======================================================================
"                                Arrow Keys
" =======================================================================
" Disable ↑ ↓ ← → keys
" This is useful for learning Vim navigation
map <Up> <NOP>
map <Down> <NOP>
map <Left> <NOP>
map <Right> <NOP>



" =======================================================================
"                                Remapping
" =======================================================================

" Vim-commentary (Ctrl + /)
nnoremap <C-_> :Commentary<CR>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
" nnoremap <M-j>    :resize -2<CR>
" nnoremap <M-k>    :resize +2<CR>
" nnoremap <M-h>    :vertical resize -2<CR>
" nnoremap <M-l>    :vertical resize +2<CR>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate ways to save
nnoremap <C-s> :w<CR>
nnoremap <Leader>w :w!<CR>

" Alternate way to save and quit
nnoremap <C-Q> :wq!<CR>

" Alternate way to force quit
nnoremap <Leader>q :q!<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Dash.vim
:nmap <silent> <leader>d <Plug>DashSearch

" Coc-fzf
nnoremap <Leader>l :CocFzfList<CR>
