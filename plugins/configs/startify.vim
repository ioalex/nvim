" Information
" LAST UPDATED: 10/09/2020
"
"   _________ __                 __  .__  _____
"  /   _____//  |______ ________/  |_|__|/ ____\__.__.
"  \_____  \\   __\__  \\_  __ \   __\  \   __<   |  |
"  /        \|  |  / __ \|  | \/|  | |  ||  |  \___  |
" /_______  /|__| (____  /__|   |__| |__||__|  / ____|
"         \/           \/                      \/
"
" Configuration file for Startify, "the fancy start screen for Vim."

" Custom header
let g:startify_custom_header = [
\ ' ──────▄▀▄─────▄▀▄',
\ ' ─────▄█░░▀▀▀▀▀░░█▄',
\ ' ─▄▄──█░░░░░░░░░░░█──▄▄',
\ ' █▄▄█─█░░▀░░┬░░▀░░█─█▄▄█',
\]

" Specify a directory for sessions
let g:startify_session_dir = '~/.config/nvim/session'

" Specify menu lists
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

" Bookmarks
let g:startify_bookmarks = [
            \ { 'z': '~/.zshrc' },
            \ { 'n': '~/.config/nvim' },
            \ { 't': '~/.tmux.conf' },
            \ { 'd': '~/Desktop' },
            \ '~/Desktop/Projects/science-fiction-v3',
            \ ]

" Prepend vim-devicon icon to each Startify entry
function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

" Automatically restart a session
" "If this option is enabled and you start Vim in a directory that contains a Session.vim, " that session will be loaded automatically. Otherwise it will be shown as the top entry
" in the Startify buffer."
let g:startify_session_autoload = 1

" Changes the working directory to the project root when you open a file or directory
let g:startify_change_to_vcs_root = 1

" Let Startify manage buffers
let g:startify_session_delete_buffers = 1

" Automatically Update Sessions
let g:startify_session_persistence = 1

" Get rid of empy buffer and quit
let g:startify_enable_special = 0