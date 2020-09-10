" Information
" LAST UPDATED: 10/09/2020
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

" 'Buffer tabs' that live in the tabline
Plug 'ap/vim-buftabline'

" Special formatting for .todo and .taskpaper files.
" You can sdd tags to tasks by starting them with an @, eg. @important or @due(tuesday).
Plug 'irrationalistic/vim-tasks'



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

" Better Whitespace Highlighting
Plug 'ntpeters/vim-better-whitespace'

" Strips trailing whitespace from lines you edit or visit in Insert mode
Plug 'thirtythreeforty/lessspace.vim'

" Respect EditorConfig files
Plug 'editorconfig/editorconfig-vim'

" Tagbar - a class outline viewer for Vim
Plug 'majutsushi/tagbar'

" Zen mode
Plug 'junegunn/goyo.vim' " Distraction-free writing
Plug 'junegunn/limelight.vim', " Hyperfocus-writing

" Alternates between relative and absolute line numbering
Plug 'myusuf3/numbers.vim'



" ====================================
"             Visual Guides
" ====================================

" Rainbow Brackets
Plug 'luochen1990/rainbow'

" Colour Highlighter
Plug 'norcalli/nvim-colorizer.lua'

" Displays indentation levels with thin vertical lines
Plug 'yggdroot/indentline'

" Key Binding Guide
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'hecal3/vim-leader-guide'

" ಠ_ಠ Vim plugin to disapprove deeply indented code ಠ_ಠ
Plug 'dodie/vim-disapprove-deep-indentation'



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
"     Markdown
" ================

" Generates a Table of Contents for Markdown
Plug 'ajorgensen/vim-markdown-toc'

" Markdown Preview plugin - synchronised scrolling
Plug 'iamcco/markdown-preview.nvim', { 'for': 'markdown' }



" ================
"       HTML
" ================

" Auto-close tags
Plug 'alvan/vim-closetag', { 'for': ['html', 'jinja.html', 'javascript', 'javascript.jsx','typescript'] }

" Changing an opening HTML tag will change the corresponding closing tag
Plug 'andrewradev/tagalong.vim', { 'for': ['html', 'jinja.html', 'javascript', 'javascript.jsx','typescript'] }

" Better highliting for matching HTML tags
Plug 'gregsexton/matchtag', { 'for': ['html', 'jinja.html', 'javascript', 'javascript.jsx','typescript'] }



" ================
" Templating Languages
" ================

" Syntax Highlighting for Nunjucks and Jinja
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'jinja.html' }



" ================
"       JSON
" ================

" Vim syntax highlighting plugin for JSON with C-style line (//) and block (/* */) comments
Plug 'kevinoid/vim-jsonc'



" ================
"    JavaScript
" ================

" Generates JSDoc block comments based on a function signature
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}



" ================
" TypeScript and TSX
" ================
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'



" ====================================
"             Integrations
" ====================================


" ================
"       Git
" ================

" Indicate added, modified and removed lines in a VCS managed file
Plug 'mhinz/vim-signify'



" ================
"       Tmux
" ================

" Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-navigator'

" Interact with tmux - VimuxRunCommand will create a horizontal pane under the current tmux pane
Plug 'benmills/vimux'

" Vim plugin for editing .tmux.conf.
Plug 'tmux-plugins/vim-tmux'



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