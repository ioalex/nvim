" Information
" LAST UPDATED: 10/09/2020
"
"   ________                                  .__      _________       __    __  .__
"  /  _____/  ____   ____   ________________  |  |    /   _____/ _____/  |__/  |_|__| ____    ____  ______
" /   \  ____/ __ \ /    \_/ __ \_  __ \__  \ |  |    \_____  \_/ __ \   __\   __\  |/    \  / ___\/  ___/
" \    \_\  \  ___/|   |  \  ___/|  | \// __ \|  |__  /        \  ___/|  |  |  | |  |   |  \/ /_/  >___ \
"  \______  /\___  >___|  /\___  >__|  (____  /____/ /_______  /\___  >__|  |__| |__|___|  /\___  /____  >
"         \/     \/     \/     \/           \/               \/     \/                   \//_____/     \/
"
" Configuration file for general settings in Neovim.
" You may find some settings from tpope/vim-sensible in here! <github.com/tpope/vim-sensible>

" The following if statement allows Vim to work without being Vi-compatible
" so that all Vim features will be available to the user
" Source: <vi.stackexchange.com/questions/25149>
if &compatible
  " Vim defaults to `compatible` when selecting a vimrc with the command-line
  " `-u` argument. Override this.
  set nocompatible
endif

" =======================================================================
"                                 General
" =======================================================================

" Error bells
set noerrorbells                        " Disable error sounds - big no no!
set visualbell
augroup NoBell
  autocmd VimEnter * set t_vb=""
augroup end

" Display
set t_Co=256                            " Support 256 colours - Other colour settings located in themes_config.vim
set number                              " Line numbers
set ruler              			            " Show the cursor position all the time
set cursorline                          " Enable highlighting of the current line
set showmatch                           " Show matching brackets
set showcmd                             " Show (partial) command in status line
set pumheight=10                        " Makes popup menu smaller
set cmdheight=2                         " More space for displaying messages
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set hidden                              " Required to keep multiple buffers open multiple buffers
set display+=lastline                   " Show the last line
set lazyredraw                          " Screen will not be redrawn while executing macros, registers and other commands that have not been typed

" Functionality
set mouse=a                             " Enable your mouse
set backspace=indent,eol,start          " Proper backspace behavior in Insert mode
set clipboard=unnamedplus               " Copy paste between Vim and everything else

" Splits
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

" Tabs
set showtabline=2                       " Always show tabs
if &tabpagemax < 50
  set tabpagemax=50
endif

" Recommended by plugins
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Prevent global options from overriding any changes to your vimrc/init.vim
set sessionoptions-=options
set viewoptions-=options



" =======================================================================
"                                Scrolling
" =======================================================================

" Start scrolling when 8 lines away from margins
if !&scrolloff
  set scrolloff=8
endif

if !&sidescrolloff
  set sidescrolloff=15
endif

set sidescroll=1
set ttyfast                             " Speed up scrolling in Vim



" =======================================================================
"                           Syntax Highlighting
" =======================================================================

" Enables syntax highlighing
if !exists("g:syntax_on")
    syntax enable
endif

" Vim-polygot Config
let g:polyglot_disabled = ['markdown', 'javascript']

" Disables all LSP features in ALE so ALE doesn't try to provide LSP features already provided by coc.nvim
" let g:ale_disable_lsp = 1



" =======================================================================
"                            Language & Encoding
" =======================================================================

let $LANG="en"                          " Set Vim editor language
set langmenu=en                         " Set Vim menu language
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
scriptencoding utf-8



" =======================================================================
"                               Spellcheck
" =======================================================================

set spell		                            " Turn on spell check
set spelllang=en_us                     " Set spell check language
autocmd Filetype gitcommit setlocal spell " Ensures spellcheck is enabled for Git commit messages, even if lines above are commented out!



" =======================================================================
"                           Wildmenu & Completion
" =======================================================================

" Completion
if has("wildmenu")
    set wildignore+=*.a,*.o
    set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
    set wildignore+=.DS_Store,.git,.hg,.svn
    set wildignore+=*~,*.swp,*.tmp
    set wildmenu
    set wildmode=longest,list
endif

if exists("&wildignorecase")
    set wildignorecase
endif

set complete-=i                          " Avoid completion result pollution



" =======================================================================
"                                  Files
" =======================================================================

" Enable filetype plugins
if has("autocmd")
  filetype plugin indent on
endif

" Formatting
set conceallevel=0                      " So that I can see `` in markdown files
set nowrap                              " Display long lines as just one line
set linebreak                           " Wrap lines at convenient points
set iskeyword+=-                      	" treat dash separated words as a word text object
set formatoptions-=cro                  " Stop newline continution of comments
set textwidth=80                        " Set max text width
" set colorcolumn=80                      " Use a color column on the 80-character mark
set nrformats-=octal                    " Prevents octal notation when incrementing numbers
set magic	                              " Set magic on, for regular expressions

" Set to auto-read when a file is changed from outside of Vim - reloads if changes exist
set autoread
au FocusGained,BufEnter * checktime

" Write to file with root permissions after editing as non-root
cmap w!! w !sudo tee %\



" =======================================================================
"                               Indentation
" =======================================================================

set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set tabstop=2 softtabstop=2             " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation



" =======================================================================
"                                 Folding
" =======================================================================

set foldmethod=indent   " Fold based on indentation levels
set foldnestmax=3       " Deepest fold is 3 levels
set nofoldenable        " Prevents folding by default



" =======================================================================
"                                Searching
" =======================================================================

set incsearch                           " Incremental search
set hlsearch                            " Highlight matching search patterns
set ignorecase                          " Ignore case when searching
set smartcase                           " Case sensitive searching activates when a capital letter is detected



" =======================================================================
"                          Backups & Undo History
" =======================================================================

" Command line history
if &history < 1000
  set history=1000
endif

set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set noswapfile
set undodir=~/.config/nvim/undo
set undofile



" =======================================================================
"                                Status Line
" =======================================================================

" Status-line
" Using default configuration for the status line removes the need for plugins
set laststatus=2                        " Always display the status line regardless of buffer count
set statusline=
set statusline+=%{StatuslineGit()}
set statusline+=%#PmenuSel#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%= " Right side settings
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]

" Returns current Git branch
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

" Function to display current Git branch, returns an empty string if there is no git repository
function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

" Auto-source when writing to init.vm alternatively you can run :source $MYVIMRC
au! BufWritePost $MYVIMRC source %