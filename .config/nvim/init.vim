set nocompatible

call plug#begin('~/.local/share/nvim/plugged')
Plug 'deviantfero/wpgtk.vim'

Plug 'junegunn/goyo.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'

Plug 'SirVer/ultisnips'
Plug 'epilande/vim-react-snippets'

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
Plug 'Galooshi/vim-import-js', { 'do': 'npm install -g import-js' }

Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mileszs/ack.vim'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

syntax on
filetype plugin indent on
colorscheme wpgtk

set mouse=a
set nohlsearch
set encoding=utf-8
let mapleader = " "

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

" vim mappings
:nnoremap <Leader>o :only<cr>
:nnoremap <Leader>L :lopen<cr>
:nnoremap <Leader>l :lcl<cr>
:nnoremap <Leader>p :pcl<cr>
:nnoremap <CR> :noh<CR><CR>

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

" UltiSnips
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" YCM
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" SuperTab
let g:SuperTabDefaultCompletionType = '<C-n>'

" ALE
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_linters_explicit = 1
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fixers_explicit = 1
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
set signcolumn=yes

" jsx
let g:jsx_ext_required = 0

" gutentags
let g:gutentags_ctags_exclude = [ 'node_modules/**' ]
set tags =./tags,tags;$HOME

" ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * NERDTree 
map <Leader>r :NERDTreeToggle<CR>
map <Leader>y :NERDTreeFind<CR>

" closetag
let g:closetag_filenames = "*.html,*.js"
