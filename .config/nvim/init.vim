set nocompatible

call plug#begin('~/.local/share/nvim/plugged')
Plug 'deviantfero/wpgtk.vim'

Plug 'junegunn/goyo.vim'
Plug 'Valloric/YouCompleteMe', { 'do': 'python ~/.local/share/nvim/plugged/YouCompleteMe/install.py' }
Plug 'SirVer/ultisnips'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'pangloss/vim-javascript'
Plug 'digitaltoad/vim-pug'
Plug 'posva/vim-vue'
Plug 'mxw/vim-jsx'
Plug 'wavded/vim-stylus'
Plug 'Quramy/tsuquyomi'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'w0rp/ale', { 'do': 'npm install -g eslint' }

Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'ludovicchabant/vim-gutentags'
call plug#end()

syntax on
filetype plugin indent on
colorscheme wpgtk

set mouse=a
set nohlsearch
set encoding=utf-8

set number                    " line numbers
set relativenumber

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

" Goyo
:nnoremap <F6> :Goyo<cr>
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

function! s:goyo_enter()
  set spell spelllang=en_gb
  noremap <buffer> <silent> <Up> gk
  noremap <buffer> <silent> <Down> gj
endfunction

function! s:goyo_leave()
  set nospell
  nunmap <buffer> <Up>
  nunmap <buffer> <Down>
endfunction
