" Information
" LAST UPDATED: 08/09/2020
"
" __________.__               .__         _________                _____.__
" \______   \  |  __ __  ____ |__| ____   \_   ___ \  ____   _____/ ____\__| ____
"  |     ___/  | |  |  \/ ___\|  |/    \  /    \  \/ /  _ \ /    \   __\|  |/ ___\
"  |    |   |  |_|  |  / /_/  >  |   |  \ \     \___(  <_> )   |  \  |  |  / /_/  >
"  |____|   |____/____/\___  /|__|___|  /  \______  /\____/|___|  /__|  |__\___  / /\
"                     /_____/         \/          \/            \/        /_____/  \/
"
" Configuration for Neovim plugins.
" Some plugins have their own separate configuration files!


" =======================================================================
"                                Sourcing
" =======================================================================

" Source all .vim files in /plugins/configs
for f in split(glob('~/.config/nvim/plugins/configs/*.vim'), '\n')
    exe 'source' f
endfor

luafile $HOME/.config/nvim/lua/plug-colorizer.lua

" =======================================================================
"                                 General
" =======================================================================

" vim-devicons Config
let g:webdevicons_enable = 1

" Enable for vim-startify screen
let g:webdevicons_enable_startify = 1

" vim-closetag Config
let g:closetag_filenames = '*.html, *.xhtml, *.phtml, *.njk' " These are the file extensions where this plugin is enabled.
let g:closetag_xhtml_filenames = '*.xhtml, *.jsx, *.js' " This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_filetypes = 'html, xhtml, phtml, javascript, njk, jinja, jinja.html'  " These are the file types where this plugin is enabled.
let g:closetag_emptyTags_caseSensitive = 1  " This will make the list of non-closing tags case-sensitive
let g:closetag_shortcut = '>' " Shortcut for closing tags, default is '>'
let g:closetag_close_shortcut = '<leader>>' " Add > at current position without closing the current tag, default is ''

" tagalong.vim Config
let g:tagalong_filetypes = ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'javascriptreact', 'typescriptreact', 'javascript']
let g:tagalong_additional_filetypes = ['nunjucks', 'njk', 'jinja', 'jinja.html']
let g:tagalong_verbose = 1

" Activate Rainbow Parentheses
let g:rainbow_active = 1

" Vim-which-key Config
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" fzf use silversearcher-ag
" Ignores node_modules and files included in .gitignore
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Tagbar Config
nmap <F8> :TagbarToggle<CR>