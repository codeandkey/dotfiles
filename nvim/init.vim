" codeandkey/dotfiles
" neovim configuration

call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'
Plug 'rhysd/vim-clang-format'
Plug 'brenoprata10/nvim-highlight-colors'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'gregsexton/Muon'

call plug#end()

" load powerline symbols for lightline
let g:lightline = {
  \ 'colorscheme': 'simpleblack',
  \ 'component': {
  \   'lineinfo': ' %3l:%-2v',
  \ },
  \ 'active': {
  \   'left': [[ 'mode', 'paste' ],
  \            [ 'cocstatus', 'readonly', 'filename', 'modified', 'lineinfo' ]]
  \ },
  \ 'component_function': {
  \   'cocstatus': 'coc#status'
  \ },
  \ 'separator': { 'left': '║', 'right': '║' },
  \ 'subseparator': { 'left': '║', 'right': '║' }
  \ }

" editor behavior
set number
set relativenumber
set laststatus=2
set guicursor=

" indentation
set shiftwidth=4
set tabstop=4

" merge signs into LN
set signcolumn=number

" colors
set termguicolors
set background=dark
syntax on
colorscheme muon

hi Pmenu ctermfg=white ctermbg=black
hi PmenuSel ctermfg=white ctermbg=black
hi PmenuSbar ctermfg=white ctermbg=black
hi PmenuThumb ctermfg=white ctermbg=black

hi LineNr ctermfg=white ctermbg=none
hi LineNrAbove ctermfg=darkgrey ctermbg=none
hi LineNrBelow ctermfg=darkgrey ctermbg=none
hi Normal ctermbg=none

" color highlight plugin
lua require('nvim-highlight-colors').setup({})

" treesitter config
lua require('nvim-treesitter.configs').setup {
      \  ensure_installed = {'c', 'cpp', 'python', 'lua', 'bash', 'json', 'yaml'},
      \  highlight = {
      \    enable = true
      \  }
      \}

" italicize comments
set t_ZH=[3m
set t_ZR=[23m
hi Comment cterm=italic

" highlight long lines
set cc=80
hi ColorColumn ctermbg=none ctermfg=red

" cursor position save
autocmd BufReadPost * silent! normal! g`"zv

" smooth paging
set nostartofline

" ctrl-i to format
nnoremap <silent> <C-I> :ClangFormat <CR>

" ctrl-j, ctrl-k for page down/up
nnoremap <silent> <C-J> <C-F>
nnoremap <silent> <C-K> <C-B>

" whitespace markers
set list
set listchars=tab:▸\ ,trail:·,extends:»,precedes:«,nbsp:␣
hi Whitespace ctermfg=red

" highlight active line
set cursorline

" dynamic terminal cursors
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
