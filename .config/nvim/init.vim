syntax on
filetype plugin indent on

set mouse=a
set nohlsearch
set encoding=utf-8

set number                    " line numbers
set relativenumber
highlight LineNr ctermfg=8

set backupdir=~/.vim/backup   " swap files
set directory=~/.vim/backup

set wrap linebreak nolist     " word wrap
set clipboard=unnamedplus     " clipboard
set wildmode=longest,list,full
set wildignore+=node_modules,*.swp,*.zip,dist,build
set path=.,src                " file suffixes
set suffixesadd=.js,.jsx,.vue

" disable automatic comment on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" splits
nnoremap <C-Left> <C-W><Left>
nnoremap <C-Right> <C-W><Right>
nnoremap <C-Up> <C-W><Up>
nnoremap <C-Down> <C-W><Down>
set splitbelow
set splitright

" tabs and spaces
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
