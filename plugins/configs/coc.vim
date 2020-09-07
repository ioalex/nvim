" Information
" LAST UPDATED: 02/09/2020
"
" _________        _________
" \_   ___ \  ____ \_   ___ \
" /    \  \/ /  _ \/    \  \/
" \     \___(  <_> )     \____
"  \______  /\____/ \______  /
"         \/               \/
"
" Configuration file for CoC, an Intellisense engine for Vim8 & Neovim, full language
" server protocol support as VSCode

" Open CoC configuration file shortcut
function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

" Extensions
let g:coc_global_extensions = ['coc-explorer', 'coc-bookmark', 'coc-eslint', 'coc-prettier', 'coc-snippets', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-pairs', 'coc-import-cost', 'coc-markdownlint', 'coc-stylelintplus', 'coc-yaml']

" Explorer Key Mapping
nmap <space>e :CocCommand explorer<CR>
" nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Prettier Remap keys for Range Format
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
