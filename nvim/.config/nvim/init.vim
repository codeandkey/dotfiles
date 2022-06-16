" codeandkey-dotfiles
" vimrc

" init vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bfrg/vim-cpp-modern'
Plug 'cocopon/iceberg.vim'

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
set laststatus=2
set guicursor=

set expandtab
set shiftwidth=4
set tabstop=4

syntax on

" merge signs into LN
set signcolumn=number

colorscheme iceberg

" colors
hi Pmenu ctermfg=white ctermbg=black
hi PmenuSel ctermfg=white ctermbg=black
hi PmenuSbar ctermfg=white ctermbg=black
hi PmenuThumb ctermfg=white ctermbg=black

hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=black

set t_ZH=[3m
set t_ZR=[23m
hi Comment cterm=italic
