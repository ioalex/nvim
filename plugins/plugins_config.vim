" Plugin Configuration

" Sources
source $HOME/.config/nvim/plugins/configs/startify.vim
source $HOME/.config/nvim/plugins/configs/coc.vim
source $HOME/.config/nvim/plugins/configs/fzf.vim
source $HOME/.config/nvim/plugins/configs/rnvimr.vim
lua require'plug-colorizer'

" Activate Rainbow Parentheses
let g:rainbow_active = 1

" Vim-which-key Config
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" fzf use silversearcher-ag
" Ignores node_modules and files included in .gitignore
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Tagbar Config
nmap <F8> :TagbarToggle<CR>
