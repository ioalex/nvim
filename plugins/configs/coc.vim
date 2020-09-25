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

" Shortcut: Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

" Extensions
let g:coc_global_extensions = ['coc-explorer', 'coc-bookmark', 'coc-snippets', 'coc-import-cost', 'coc-template', 'coc-pairs', 'coc-eslint', 'coc-stylelintplus', 'coc-markdownlint', 'coc-prettier', 'coc-emmet', 'coc-html', 'coc-css', 'coc-json', 'coc-tsserver', 'coc-yaml', 'coc-sh', 'coc-vimlsp']

" Explorer Key Mapping
nmap <space>e :CocCommand explorer<CR>
" nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Prettier Remap keys for Range Format
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Coc-template
" Automatically add templates to empty buffers for these filetypes:
autocmd BufNewFile *.sh :CocCommand template.templateTop