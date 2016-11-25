set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"UI settings - start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"GVim gui
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=l
set guioptions-=r
set guioptions-=R
set guioptions-=b

"Font
set guifont="DejaVu Sans Mono"

"Themes
syntax enable
if has('gui_running')
    set background=dark
    colorscheme solarized
endif

"Show number lines
set number
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"UI settings - end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Behaviors settings - start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set enc=utf-8
set wrap
set noswapfile
set tabstop=4
set shiftwidth=4
set tw=80
"В режиме вставки заменяет пробел на соответствующее количество пробелов
set expandtab
"По умолчанию если в начале строки мы указали таб, а потом нажимаем backspace то удаляется по одному пробелу, эта опция определяет единиый отступ и удает все целиком
set smarttab
"Копирует отзывы с текущей строки при добавлении новой + выставляет отступы для {}
set smartindent

set laststatus=2

"Plugins Options
"Airline
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_linecolumn_prefix='¶'
let g:airline_fugitive_prefix='⎇ '


map <C-n> :NERDTree
