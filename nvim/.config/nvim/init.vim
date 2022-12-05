call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bfrg/vim-cpp-modern'
Plug 'cocopon/iceberg.vim'
Plug 'numirias/semshi', { 'do': 'UpdateRemotePlugins' }
Plug 'nvim-treesitter/nvim-treesitter'

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

" python highlighting
let g:semshi#simplify_markup=v:false

" editor behavior
set number
set relativenumber
set laststatus=2
set guicursor=

" indentation
set expandtab
set shiftwidth=4
set tabstop=4

syntax on

" merge signs into LN
set signcolumn=number

" colors
colorscheme iceberg

hi Pmenu ctermfg=white ctermbg=black
hi PmenuSel ctermfg=white ctermbg=black
hi PmenuSbar ctermfg=white ctermbg=black
hi PmenuThumb ctermfg=white ctermbg=black

hi LineNr ctermfg=white ctermbg=none
hi LineNrAbove ctermfg=darkgrey ctermbg=none
hi LineNrBelow ctermfg=darkgrey ctermbg=none
hi Normal ctermbg=none

" italicize comments
set t_ZH=[3m
set t_ZR=[23m
hi Comment cterm=italic

" highlight long lines
match Error /\%81v.\+/

" cursor position save
autocmd BufReadPost * silent! normal! g`"zv
