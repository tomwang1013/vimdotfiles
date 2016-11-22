execute pathogen#infect()
set nocompatible              " be iMproved, required
syntax on                     " Enable syntax highlighting
filetype plugin indent on
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set number
set hlsearch    " highlight search
set incsearch   " incremental search
set ignorecase  " Do case insensitive matching with
set smartcase   " be sensitive when there's a capital letter
set wrap
let mapleader=","

" navigate
nmap mh <C-w>h
nmap ml <C-w>l
nmap mk <C-w>k
nmap mj <C-w>j
nmap - :w<CR>
nmap <leader>z :q<CR>
nmap <leader>za :qa<CR>
nmap <leader>s :sp<CR>
nmap <leader>v :vsp<CR>
nmap <leader>w :noh<CR>
imap jj <ESC>

au BufRead,BufNewFile {Gemfile,*.god,Rakefile,Capfile,*.rake,config.ru} set ft=ruby
au BufRead,BufNewFile {*.md,*.mkd,*.markdown} set ft=markdown
au BufRead,BufNewFile {*.thrift} set ft=c

hi Comment ctermfg=DarkGrey
runtime macros/matchit.vim

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1

" bufexplorer
let g:bufExplorerShowDirectories=0   " Not show directories.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
