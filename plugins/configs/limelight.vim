" Information
" LAST UPDATED: 08/09/2020
"
" .____    .__               .__  .__       .__     __
" |    |   |__| _____   ____ |  | |__| ____ |  |___/  |_
" |    |   |  |/     \_/ __ \|  | |  |/ ___\|  |  \   __\
" |    |___|  |  Y Y  \  ___/|  |_|  / /_/  >   Y  \  |
" |_______ \__|__|_|  /\___  >____/__\___  /|___|  /__|
        " \/        \/     \/       /_____/      \/
"
" Configuration file for Limelight.vim, "hyperfocus-writing in Vim".

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.85

" Number of preceding/following paragraphs to include (default: 0)
" let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
" let g:limelight_bop = '^\s'
" let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1