" Vundle Config Start
set nocompatible " Be IMproved
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'bling/vim-airline.git'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'dart-lang/dart-vim-plugin'
call vundle#end()
filetype plugin indent on
" Vundle Config End

colorscheme desert
syntax enable                   " enable syntax processing
set softtabstop=2               " make tab 2 space long
set expandtab                   " use spaces for indents
set shiftwidth=2                " no of spaces to use for indents
set number 	                " show line numbers
set guifont=Consolas:h11:cANSI  " change font-face and size
set backspace=2                 " fixes backspace' behaviour 

vnoremap <C-c> "+y
vnoremap <C-v> "+gP
