" Information
" LAST UPDATED: 08/09/2020
"
" .___            .___             __  .__  .__
" |   | ____    __| _/____   _____/  |_|  | |__| ____   ____
" |   |/    \  / __ |/ __ \ /    \   __\  | |  |/    \_/ __ \
" |   |   |  \/ /_/ \  ___/|   |  \  | |  |_|  |   |  \  ___/
" |___|___|  /\____ |\___  >___|  /__| |____/__|___|  /\___  >
"          \/      \/    \/     \/                  \/     \/
"
" Configuration file for Indentline, which displays thin vertical lines at each indentation level for code indented with spaces.

" indentLine will overwrite 'conceal' color with grey by default. If you want to highlight conceal color with your colorscheme, disable by:
"let g:indentLine_setColors = 0

" You can customise conceal colour by:
" Vim
" let g:indentLine_color_term = 239

" GVim
" let g:indentLine_color_gui = '#A4E57E'

" none X terminal
" let g:indentLine_color_tty_light = 7 " (default: 4)
" let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
" let g:indentLine_bgcolor_term = 202
" let g:indentLine_bgcolor_gui = '#FF5F00'

" Change Indent Character (can be any ASCII character or ¦, ┆, │, ⎸, ▏)
let g:indentLine_char = '│'