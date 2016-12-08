set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'fatih/vim-go'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" syntax on

filetype plugin indent on

set ignorecase
set smartcase
set incsearch
set hlsearch

set number

set expandtab
set autoindent
set smartindent

set tabstop=2
set softtabstop=2
set shiftwidth=2

set nowrap
set scrolloff=7
set sidescrolloff=7

set nobackup
set noswapfile

set hidden

set visualbell

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set wildmenu " Enhanced command line completion.
set wildmode=list:longest " Complete files like a shell.
set wildignore=*/target/*
set wildignore+=tags
set wildignore+=*/node_modules/*
set wildignore+=*/coverage/*

set autoread

let mapleader=" "

"persistent undo :help new-persistent-undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" Desactiver les touches directionnelles
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"Quick buffer navigation
nnoremap gb :buffers<CR>:sb<Space>

" Easy moving
noremap H ^
noremap L $

nnoremap U <C-r>

noremap <Leader><Leader> <C-^>

map <F5> :!ctags -R

" FZF
map <leader>f :FZF<cr>

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

let g:netrw_liststyle=3
map <leader>k :E<cr>

