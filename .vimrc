set nocompatible " Be IMproved
filetype plugin indent on
colorscheme desert
syntax enable                   " enable syntax processing
set expandtab                   " use spaces for indents
set shiftwidth=2                " no of spaces to use for indents
set number 	                " show line numbers
set backspace=2                 " fix backspace behaviour 

autocmd FileType go setlocal noexpandtab shiftwidth=8

call plug#begin('~/.vim/bundle')
if executable('go')
	Plug 'fatih/vim-go'
endif
if executable('dart')
	Plug 'dart-lang/dart-vim-plugin'
endif
if executable('typescript')
	Plug 'leafgarland/typescript-vim'
endif
Plug 'vim-scripts/Solarized'
call plug#end()
