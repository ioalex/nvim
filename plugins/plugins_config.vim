" Plugin Configuration
" Startify Config
source $HOME/.config/nvim/plugins/configs/startify.vim

" CoC Configuration
source $HOME/.config/nvim/plugins/configs/coc.vim

" Rainbow Config
source $HOME/.config/nvim/plugins/configs/rainbow.vim

" Source coloriser Config
lua require'plug-colorizer'

" Vim-which-key Config
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" FZF Config
source $HOME/.config/nvim/plugins/configs/fzf.vim

" fzf use silversearcher-ag
" Ignores node_modules and files included in .gitignore
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" rnvimr Config
source $HOME/.config/nvim/plugins/configs/rnvimr.vim

" Tagbar Config
nmap <F8> :TagbarToggle<CR>
