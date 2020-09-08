" Information
" LAST UPDATED: 08/09/2020
"
"   ________                            .__
"  /  _____/  ____ ___.__. ____   ___  _|__| _____
" /   \  ___ /  _ <   |  |/  _ \  \  \/ /  |/     \
" \    \_\  (  <_> )___  (  <_> )  \   /|  |  Y Y  \
"  \______  /\____// ____|\____/ /\ \_/ |__|__|_|  /
"         \/       \/            \/              \/
"
" Configuration file for Goyo, "distraction-free writing in Vim."
" Integrated with Limelight.vim

" GoyoEnter event
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

" GoyoLeave event
function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()