" Information
" LAST UPDATED: 08/09/2020
"
" ___________.__                                   _________                _____.__
" \__    ___/|  |__   ____   _____   ____   ______ \_   ___ \  ____   _____/ ____\__| ____
"   |    |   |  |  \_/ __ \ /     \_/ __ \ /  ___/ /    \  \/ /  _ \ /    \   __\|  |/ ___\
"   |    |   |   Y  \  ___/|  Y Y  \  ___/ \___ \  \     \___(  <_> )   |  \  |  |  / /_/  >
"   |____|   |___|  /\___  >__|_|  /\___  >____  >  \______  /\____/|___|  /__|  |__\___  / /\
"                 \/     \/      \/     \/     \/          \/            \/        /_____/  \/
"
" Theme / :colorscheme configuration.
" Default Theme: dracula

" Assume a dark background
set background=dark

" Use true colour in terminal
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Set colorscheme to dracula
colorscheme dracula

" Fix cursor flick when using Neovim under tmux
hi EndOfBuffer ctermbg=NONE ctermfg=200 cterm=NONE
hi Normal ctermbg=NONE ctermfg=200 cterm=NONE