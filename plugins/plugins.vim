" Information
" LAST UPDATED: 07/09/2020
"
" __________.__               .__
" \______   \  |  __ __  ____ |__| ____   ______
"  |     ___/  | |  |  \/ ___\|  |/    \ /  ___/
"  |    |   |  |_|  |  / /_/  >  |   |  \\___ \
"  |____|   |____/____/\___  /|__|___|  /____  >
"                     /_____/         \/     \/
"
" A list of Neovim plugins categorized by their type. Plugins are installed & managed by vim-plug.
" <https://github.com/junegunn/vim-plug>


" =======================================================================
"         Auto-install vim-plug if not currently installed
" =======================================================================

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif



" =======================================================================
"                     Specify a directory for plugins
" =======================================================================

call plug#begin('~/.config/nvim/autoload/plugged')



" =======================================================================
"                                 Plugins
" =======================================================================


" ====================================
"                General
" ====================================

" Start Screen
Plug 'mhinz/vim-startify'

" Dev Icons!
Plug 'ryanoasis/vim-devicons'

" Use <Tab> for insert completions
Plug 'ervandew/supertab'

" Fade inactive buffers
Plug 'TaDaa/vimade'

" Reopen files at your last edit position
Plug 'farmergreg/vim-lastplace'



" ====================================
"                Themes
" ====================================

" Colour Schemes
source $HOME/.config/nvim/themes/themes.vim



" ====================================
"                Editing
" ====================================

" Better Comments
Plug 'tpope/vim-commentary'

" Surround
Plug 'tpope/vim-surround'

" Repeat stuff
Plug 'tpope/vim-repeat'

" Highlight all matches under cursor
Plug 'RRethy/vim-illuminate'

" Enable multiple cursors - like VSCode!
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Respect EditorConfig files
Plug 'editorconfig/editorconfig-vim'

" Zen mode
Plug 'junegunn/goyo.vim'

" Tagbar - a class outline viewer for Vim
Plug 'majutsushi/tagbar'



" ====================================
"             Visual Guides
" ====================================

" Rainbow Brackets
Plug 'luochen1990/rainbow'

" Colour Highlighter
Plug 'norcalli/nvim-colorizer.lua'

" Indicate added, modified and removed lines in a VCS managed file
Plug 'mhinz/vim-signify'

" Key Binding Guide
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'hecal3/vim-leader-guide'



" ====================================
"     File Searching and Management
" ====================================

" Really fast fuzzy finding in Vim with a FZF wrapper
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Changes Vim working directory to project root
Plug 'airblade/vim-rooter'

" Helpers for UNIX shell commands
Plug 'tpope/vim-eunuch'

" Ranger File Manager Wrapper
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}



" ====================================
"           Language Support
" ====================================

" IntelliSense and Syntax Highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" ================
"       HTML
" ================

" Auto-close tags
Plug 'alvan/vim-closetag'

" Changing an opening HTML tag will change the corresponding closing tag
Plug 'andrewradev/tagalong.vim'

" Better highliting for matching HTML tags
Plug 'gregsexton/matchtag'



" ================
" Templating Languages
" ================

" Syntax Highlighting for Nunjucks and Jinja
Plug 'Glench/Vim-Jinja2-Syntax'



" ================
"       JSON
" ================

" Vim syntax highlighting plugin for JSON with C-style line (//) and block (/* */) comments
Plug 'kevinoid/vim-jsonc'



" ================
" TypeScript and TSX
" ================
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'



" =======================================================================
"                        Initialise plugin system
" =======================================================================

call plug#end()



" =======================================================================
"              Automatically install missing plugins on vim startup
" =======================================================================

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif