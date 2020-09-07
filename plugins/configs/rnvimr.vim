" Information
" LAST UPDATED: 02/09/2020
"
" __________            .__
" \______   \ _______  _|__| ____________
"  |       _//    \  \/ /  |/     \_  __ \
"  |    |   \   |  \   /|  |  Y Y  \  | \/
"  |____|_  /___|  /\_/ |__|__|_|  /__|
"         \/     \/              \/
"
" Configuration file for Ranger wrapper plugin.
" (https://github.com/kevinhwang91/rnvimr)

" Replace netrw with Ranger
let g:rnvimr_ex_enable = 1

" Hide Ranger after picking a file
let g:rnvimr_enable_picker = 1

" Enable border for floating window
let g:rnvimr_draw_border = 1

" Hide the files included in gitignore
let g:rnvimr_hide_gitignore = 1

nmap <space>r :RnvimrToggle<CR>
