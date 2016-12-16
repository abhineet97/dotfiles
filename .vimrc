set nocompatible " Be IMproved
filetype plugin indent on

" install vim-plug (https://github.com/junegunn/vim-plug) if it isn't
if empty(glob('~/.vim/autoload/plug.vim')) 
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
" install vimscripts using vim-plug
if !empty(glob('~/.vim/autoload/plug.vim'))
  call plug#begin('~/.vim/plugged')
  " Plug 'vim-syntastic/syntastic'
  " Plug 'dart-lang/dart-vim-plugin'
  call plug#end()
endif

colorscheme desert
syntax enable                   " enable syntax processing
set expandtab                   " use spaces for indents
set shiftwidth=2                " no of spaces to use for indents
set number 	                " show line numbers
set backspace=2                 " fix backspace behaviour 
