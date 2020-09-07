" Information
" LAST UPDATED: 07/09/2020
"
" _________                               .__
" \_   ___ \  ___________   ____    ___  _|__| _____
" /    \  \/ /  _ \_  __ \_/ __ \   \  \/ /  |/     \
" \     \___(  <_> )  | \/\  ___/    \   /|  |  Y Y  \
"  \______  /\____/|__|    \___  > /\ \_/ |__|__|_|  /
"         \/                   \/  \/              \/
"
" Lots of sourcing already!

" General Settings
source $HOME/.config/nvim/core/general_config.vim

" Key Mapping
source $HOME/.config/nvim/core/key_bindings.vim

" Plugins
" Plugins are installed at $HOME/.config/nvim/autoload/plugged
source $HOME/.config/nvim/plugins/plugins.vim

" Colorscheme Configuration
" &termguicolors must be set before colorizer is sourced
source $HOME/.config/nvim/themes/themes_config.vim

" Plugins Configuration
source $HOME/.config/nvim/plugins/plugins_config.vim
