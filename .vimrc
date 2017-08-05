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
let g:tex_flavor = "latex"

augroup pencil
    autocmd!
    autocmd FileType markdown,mkd call pencil#init({'wrap': 'hard'})
    autocmd FileType text         call pencil#init({'wrap': 'hard'})
    autocmd Filetype tex          call pencil#init({'wrap': 'hard'})
    autocmd Filetype notes        call pencil#init({'wrap': 'hard'})
augroup END

" Colour setup
colorscheme base16-monokai
highlight Normal ctermbg=black
" Number fun
set relativenumber 
set number

" Maps & Remaps
:inoremap jk <Esc>

" Tabs as Spaces 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
