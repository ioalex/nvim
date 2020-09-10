" Information
" LAST UPDATED: 10/09/2020
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

" vim-disapprove-deep-indentation Config
" shows ಠ_ಠ at the beginning of each line that is indented at least 5 levels
let g:LookOfDisapprovalTabThreshold=5
let g:LookOfDisapprovalSpaceThreshold=(&tabstop*5)
let g:LookOfDisapprovalNoStyle=1 " Disable styling to improve compatibility with indentLine - both use Vim's conceal feature

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

" vim-lastplace Config
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_ignore_buftype = "quickfix,nofile,help"
let g:lastplace_open_folds = 0

" vim-better-whitespace Config
" lessspace.vim trimming is preferred as it only trims from lines edited as to prevent bloat in version control logs
" let g:better_whitespace_ctermcolor = '<desired_color>' " Sets highlight colour
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 0
let g:better_whitespace_verbosity=1

" lessspace.vim Config
let g:lessspace_enabled = 1
let g:lessspace_normal = 1
let g:lessspace_blacklist = ['diff']

" Numbers.vim Compatibility
let g:numbers_exclude = ['tagbar', 'startify']

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

" Shortcut: Generate TOC in Markdown files
call SetupCommandAbbrs('TOC', 'GenerateMarkdownTOC')