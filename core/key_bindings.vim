" Information
" LAST UPDATED: 12/08/2020
"
"  ____  __.             __________                                    .__
" |    |/ _|____ ___.__. \______   \ ____   _____ _____  ______ ______ |__| ____    ____
" |      <_/ __ <   |  |  |       _// __ \ /     \\__  \ \____ \\____ \|  |/    \  / ___\
" |    |  \  ___/\___  |  |    |   \  ___/|  Y Y  \/ __ \|  |_> >  |_> >  |   |  \/ /_/  >
" |____|__ \___  > ____|  |____|_  /\___  >__|_|  (____  /   __/|   __/|__|___|  /\___  /
"         \/   \/\/              \/     \/      \/     \/|__|   |__|           \//_____/
"
" Configuration file for key-remapping in Neovim.

" Uncomment to deactivate ↑ ↓ ← → keys
" This is useful for learning Vim navigation
" map <Up> <NOP>
" map <Down> <NOP>
" map <Left> <NOP>
" map <Right> <NOP>


" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

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