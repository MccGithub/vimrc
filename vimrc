call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/indentLine'
Plug 'kien/ctrlp.vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'fatih/molokai', { 'tag': '*' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'mhinz/vim-startify'
Plug 'valloric/YouCompleteMe'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'majutsushi/tagbar'
Plug 'chun-yang/auto-pairs'
call plug#end()

"base
set nocompatible                " Enables us Vim specific features
filetype off                    " Reset filetype detection first ...
filetype plugin indent on       " ... and enable filetype detection
set ttyfast                     " Indicate fast terminal conn for faster redraw
set ttymouse=xterm2             " Indicate terminal type for mouse codes
set ttyscroll=3                 " Speedup scrolling
set laststatus=2                " Show status line always
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically read changed files
set autoindent                  " Enabile Autoindent
set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set noerrorbells                " No beeps
set number                      " Show line numbers
set showcmd                     " Show me what I'm typing
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Vertical windows should be split to right
set splitbelow                  " Horizontal windows should split to bottom
set autowrite                   " Automatically save before :next, :make etc.
set hidden                      " Buffer should still exist if window is closed
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set noshowmatch                 " Do not show matching brackets by flickering
set noshowmode                  " We show the mode with airline or lightline
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not it begins with upper case
set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set pumheight=10                " Completion window max size
set nocursorcolumn              " Do not highlight column (speeds up highlighting)
set nocursorline                " Do not highlight cursor (speeds up highlighting)
set lazyredraw                  " Wait to redraw
"set title
colorscheme darcula 			"colorscheme
set ts=4
set mouse=""

" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"leader
let mapleader=','
let g:mapleader=','

inoremap <leader>e <ESC>A
inoremap <leader>a <ESC>I
inoremap <leader>c <ESC>2li

nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

inoremap <ESC> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Right> <nop>
inoremap <Left> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Right> <nop>
nnoremap <Left> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <Right> <nop>
vnoremap <Left> <nop>

inoremap <leader>w <Esc>:w<cr>
inoremap jj <Esc>

inoremap <leader>w <Esc>:w<cr>
nnoremap <leader>w :w<cr>

noremap <silent> [b :bprevious<CR>
noremap <silent> [n :bnext<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" nerdtree
nnoremap <F5> :NERDTreeFind<space>
nnoremap <F6> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = ':'
let NERDTreeShowHidden=1

let NERDTreeIgnore = ['^.git$','^.svn$','\.gitignore$']

let g:ctrlp_map = '<C-p>'
let g:ctrlp_show_hidden=0
nmap ss <Plug>(easymotion-s2)
nnoremap <leader>t :TagbarToggle<CR>
" Enable to copy to clipboard for operations like yank, delete, change and put
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
if has('unnamedplus')
  set clipboard^=unnamed
  set clipboard^=unnamedplus
endif

" This enables us to undo files even if you exit Vim.
if has('persistent_undo')
  set undofile
  set undodir=~/.config/vim/tmp/undo//
endif

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" Enter automatically into the files directory
autocmd BufEnter * silent! lcd %:p:h



" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
