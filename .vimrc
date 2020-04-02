call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" General settings
syntax on		" Set syntax highlighting
set termguicolors	" Set colorscheme
colorscheme monokai_pro	" Monokai pro is my favorite!
set number relativenumber	" Set line numbers
set autoread    	" Autoreload files when they are updated
set clipboard=unnamed " Use mac clipboard in VIM

" Code formatting
set autoindent			" Copy indent from current line when starting new line
set tabstop=4           " Width of a hard tabstop measured in spaces.
set softtabstop=4       " Number of spaces that tab counts while editing.
set shiftwidth=4        " Size of an indent.
set smartindent         " Do smart auto-indenting when starting a new line.

" Searching
set incsearch           " Search as you type.
set hlsearch            " Highlight search results.

" Mappings: General

" Make spacebar the leader.
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

" Mappings: Movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-w> <C-w>w

" NERDtree setup
" Always open with NT + Focus on code screen
augroup nerdtree_open
    autocmd!
    autocmd VimEnter * NERDTree | wincmd p
augroup END

let NERDTreeShowHidden=1
" NerdTree Mapping
nmap <F6> :NERDTreeToggle<CR>

" FZF
let g:fzf_prefer_tmux = 1
let g:fzf_layout = { 'down': '~40%' }

" Mappings
" Mappings for FZF
nnoremap <silent> <leader><space> :Files<CR>

" Mappings for NERDCommenter
nmap <leader>, :call NERDComment(0,"toggle")<CR>

