" Information
" LAST UPDATED: 13/08/2020
"
" __________.__               .__
" \______   \  |  __ __  ____ |__| ____   ______
"  |     ___/  | |  |  \/ ___\|  |/    \ /  ___/
"  |    |   |  |_|  |  / /_/  >  |   |  \\___ \
"  |____|   |____/____/\___  /|__|___|  /____  >
"                     /_____/         \/     \/
"
" Configuration file for Neovim plugins. Plugins are managed by vim-plug.
" (https://github.com/junegunn/vim-plug)

" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.config/nvim/autoload/plugged')

" Plugins
" Start Screen
Plug 'mhinz/vim-startify'

"Colour Themes
Plug 'dracula/vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'morhetz/gruvbox'
Plug 'jaredgorski/spacecamp'
Plug 'eskilop/NorthernLights.vim'

" Visual Guides
" Rainbow Brackets
Plug 'luochen1990/rainbow'

" Colour Highlighter
Plug 'norcalli/nvim-colorizer.lua'

" Indicate added, modified and removed lines in a VCS managed file
Plug 'mhinz/vim-signify'

" Key Binding Guide
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'hecal3/vim-leader-guide'

" Fade inactive buffers
Plug 'TaDaa/vimade'

" File Searching
" FZF is already installed by Homebrew, fzf.vim is just a wrapper for fzf in vim
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Tagbar - a class outline viewer for Vim
Plug 'majutsushi/tagbar'

" IntelliSense and Syntax Highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TypeScript and TSX Support
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Initialise plugin system
call plug#end()

" Plugin Configuration
" Startify Config
source $HOME/.config/nvim/plugins/startify.vim

" CoC Configuration
source $HOME/.config/nvim/plugins/coc.vim

" Dracula Theme Config
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula

" Rainbow Config
source $HOME/.config/nvim/plugins/rainbow.vim

" Source coloriser Config
lua require'plug-colorizer'

" Vim-which-key Config
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" FZF Config
source $HOME/.config/nvim/plugins/fzf.vim

" fzf use silversearcher-ag
" Ignores node_modules and files included in .gitignore
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Tagbar Config
nmap <F8> :TagbarToggle<CR>