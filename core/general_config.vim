" Information
" LAST UPDATED: 08/09/2020
"
"   ________                                  .__      _________       __    __  .__
"  /  _____/  ____   ____   ________________  |  |    /   _____/ _____/  |__/  |_|__| ____    ____  ______
" /   \  ____/ __ \ /    \_/ __ \_  __ \__  \ |  |    \_____  \_/ __ \   __\   __\  |/    \  / ___\/  ___/
" \    \_\  \  ___/|   |  \  ___/|  | \// __ \|  |__  /        \  ___/|  |  |  | |  |   |  \/ /_/  >___ \
"  \______  /\___  >___|  /\___  >__|  (____  /____/ /_______  /\___  >__|  |__| |__|___|  /\___  /____  >
"         \/     \/     \/     \/           \/               \/     \/                   \//_____/     \/
"
" Configuration file for general settings in Neovim.

" Set leader key
let g:mapleader = "\<Space>"

" Enable filetype plugins
filetype plugin indent on

" Enables syntax highlighing
if !exists("g:syntax_on")
    syntax enable
endif

" Set Vim language
let $LANG='en'
set langmenu=en
set spell		                            " Turn on spell check
set spelllang=en_us                     " Set spell check language
set encoding=utf-8                      " The encoding displayed


set noerrorbells                        " Disable error sounds
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4 softtabstop=4             " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set smartcase                           " Case sensitive searching
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                          " Your working directory will always be the same as your working directory

set noswapfile
set nobackup
set undodir=~/.config/nvim/undo
set undofile
set incsearch                           " Incremental search
set hlsearch                            " Highlight matching search patterns
set showmatch                           " Show matching brackets
set showcmd                             " Show (partial) command in status line
set backspace=indent,eol,start          " Proper backspace behavior
set ttyfast                             " Speed up scrolling in Vim
set wildmenu                            " Great command-line completion, use `<Tab>` to move around and `<CR>` to validate


set foldmethod=indent   " fold based on indent
set foldnestmax=3       " deepest fold is 3 levels
set nofoldenable        " dont fold by default


au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Ensures spellcheck is enabled for Git commit messages
autocmd Filetype gitcommit setlocal spell


" Status-line
set laststatus=2                        " Always display the status line regardless of buffer count
set statusline=
set statusline+=%{StatuslineGit()}
set statusline+=%#PmenuSel#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%= "Right side settings
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