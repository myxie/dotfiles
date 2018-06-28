syntax on
set nocompatible
filetype off
set term=screen-256color 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'vimwiki/vimwiki'
 call vundle#end()
filetype plugin indent on

let g:vimwiki_list = [{'path':'~/Dropbox/vimwiki', 
        \'path_html': '~/vimwiki_html/', 
        \'css_name': 'main.css',
        \'ext':'.txt'}] 

" Colour setup
" colorscheme monokai
" highlight Normal ctermbg=none

" Number fun
set relativenumber 
set number

" Maps & Remaps
:inoremap jk <Esc>

" Tabs as Spaces 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
