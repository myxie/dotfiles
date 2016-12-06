" syntax on
set nocompatible
filetype off
 
" Vundle and plugin management
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Plugin 'gmarik/Vundle.vim'
Plugin 'reedes/vim-pencil'
call vundle#end()
filetype plugin indent on

" airline
let g:airline_powerline_fonts = 1  
set laststatus=2
let g:airline_theme='tomorrow'

" Colour setup
colorscheme base16-monokai
highlight Normal ctermbg=none

" Number fun
set relativenumber 
set number

" Maps & Remaps
:inoremap jk <Esc>

" Tabs as Spaces 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
