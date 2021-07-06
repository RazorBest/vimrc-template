" Vanilla vim settings
set nocompatible
filetype plugin on
set path+=**
set wildmenu

set nu
if has("syntax")
    syntax on
endif
set autoindent
set smartindent
set nowrap
set expandtab
set noswapfile
set nobackup
set incsearch
set undodir=~/.vim/undodir
set undofile
set tabstop=4
set shiftwidth=4
set softtabstop=0
set smarttab
set noerrorbells
set scrolloff=8

set colorcolumn=80

let mapleader = " "

" Shortcuts
" set timeoutlen=200
" nnoremap o o<Esc>
" nnoremap O o<Esc>
" nmap oo oi
" nmap OO Oi

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Plug 'jremmen/vim-ripgrep'
" Plug 'kien/ctrlp.vim'
" Plug 'vim-syntastic/syntastic'
" Plug 'preservim/nerdtree'
" Plug 'nvie/vim-flake8'
Plug 'ycm-core/YouCompleteMe'
" Plug 'wakatime/vim-wakatime'

call plug#end()

let g:ycm_always_populate_location_list = 1

" Syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" autocmd BufNewFile,BufRead *.asm set filetype=nasm
" let g:syntastic_nasm_nasm_args = "-f elf32"

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
