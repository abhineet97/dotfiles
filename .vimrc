set nocompatible " Be IMproved
filetype plugin indent on

" vim-plug (https://github.com/junegunn/vim-plug) 
if empty(glob('~/.vim/autoload/plug.vim')) " install vim-plug if it isn't.
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
if !empty(glob('~/.vim/autoload/plug.vim')) " if vim-plug is installed then install vim scripts using it.
  call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/syntastic'
  Plug 'bling/vim-airline'
  Plug 'dart-lang/dart-vim-plugin'
  call plug#end()
endif

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
