call plug#begin()
Plug 'itchyny/lightline.vim'
call plug#end()

set number

let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }

set laststatus=2
colorscheme zellner

highlight LineNr ctermfg=grey
