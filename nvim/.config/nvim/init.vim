" vimrc

" init vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" load powerline symbols for lightline
let g:lightline = {
	\ 'colorscheme': 'simpleblack',
	\ 'component': {
	\   'lineinfo': ' %3l:%-2v',
	\ },
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified', 'lineinfo' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status'
	\ },
	\ 'separator': { 'left': '▓░', 'right': '░▓' },
	\ 'subseparator': { 'left': '║', 'right': '║' }
	\ }

" editor behavior
set number
set relativenumber
set laststatus=2
set guicursor=

set expandtab
set shiftwidth=4
set tabstop=4

syntax on
colorscheme default
