" Information
" LAST UPDATED: 10/09/2020
"
" ___________                   __  .__
" \_   _____/_ __  ____   _____/  |_|__| ____   ____   ______
"  |    __)|  |  \/    \_/ ___\   __\  |/  _ \ /    \ /  ___/
"  |     \ |  |  /   |  \  \___|  | |  (  <_> )   |  \\___ \
"  \___  / |____/|___|  /\___  >__| |__|\____/|___|  /____  >
"      \/             \/     \/                    \/     \/
"
" Various useful functions

" Remove trailing whitespace on save
" lessspace.vim trimming is preferred as it only trims from lines edited as to prevent bloat in version control logs

function TextWidthIsTooWide()
  if &l:textwidth ># 80
    return 1
  endif
endfunction

if TextWidthIsTooWide()
  echom "WARNING: Line has exceeded 80 characters!"
endif