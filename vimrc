execute pathogen#infect()

syntax on
filetype plugin indent on

set t_Co=256
set background=light
colorscheme Tomorrow-Night-Eighties
hi clear SignColumn " for gitgutter, nicer looking sign column

let g:HardMode_level = 'wannabe'
let g:localvimrc_ask = 0
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()


" VIM settings
set nocompatible
set notimeout
set ttimeout
set timeoutlen=100
set updatetime=1000
set backspace=2 " make backspace work like most other apps

set directory=~/.vim/swp//
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set undofile
set noswapfile
set path+=./lib,./spec
set shell=/bin/sh
set swb=useopen
set tags+=tags;/,./gems.tags;/,gems.tags;/
set hidden
set wildmenu wildmode=full
set completeopt=longest,menuone
set laststatus=2 " Always show status line.
set number
set numberwidth=3
set noacd
set showcmd
set tabstop=2 " Tabs are 2 spaces
set shiftwidth=2 " Tabs under smart indent
set expandtab
set noea
set ttymouse=xterm2
set wildignore=*.png,*.jpg,*.xcf,*.wav,log/*,tmp/*,coverage/*
" Enable autoselect clipboard
set clipboard=autoselect,unnamed

set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set showmatch  " Show matching brackets.
" gvim specific
set mousehide  " Hide mouse after chars type
set mouse=a

let mapleader=','

set pastetoggle=<F2>

noremap ; :
noremap Y y$

" CoffeeScript settings
au FileType coffee setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Ruby settings
au BufRead,BufNewFile Guardfile,Gemfile.personal,Vagrantfile,*.arb,*.cr set ft=ruby
autocmd FileType ruby,eruby,scss,css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" JST settings
autocmd FileType jst setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" " YAML settings
autocmd FileType yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" My mappings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

noremap <C-Down>  <C-W>j
noremap <C-Up>    <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right> <C-W>l


nmap ]t :tnext<CR>
nmap [t :tprev<CR>

" ctrlp settings
nmap <Leader>o :CtrlP<CR>
let g:ctrlp_use_caching = 0
let g:ctrlp_custom_ignore = { 'dir': '\v(tmp|coverage)$' }
let g:ctrlp_reuse_window = 'NERD'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<cr>', '<c-y>', '<2-LeftMouse>'],
    \ 'CreateNewFile()':      []
    \ }

" vim-rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "!spring rspec {spec}"

" NERD Tree settings
map <leader>n :e %:p:h<CR>

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" surround settings
vmap ) s)
vmap ( s(
vmap ' s'
vmap { s{
vmap } s}
vmap # s#
nmap s ys

" Add recently accessed projects menu (project plugin)
set viminfo^=!


" Autoformat json file. Requires `sudo cpan JSON::XS`
map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>

" Mapping ESC in insert mode and command mode to double i
" imap ii <C-[>
" cmap ii <C-[>

