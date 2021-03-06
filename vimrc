" vim, not vi
set nocompatible

" pathogen
execute pathogen#infect()

" ignore modelines
set modelines=0

" set filetype
filetype plugin on
filetype indent on

" key map
let mapleader = ','

set ttyfast

" -----------------------------------------------------------------------------
" UI
" -----------------------------------------------------------------------------

" highlight whitespaces
set list listchars=tab:»·,trail:·,extends:>

" highlight the current line
set cursorline

" show line numbers
set number

" set the title of the window
set title

" syntax highlighting
syntax on

" reload changed file
set autoread

set hidden

set visualbell

set splitbelow splitright

" colorscheme
colorscheme solarized
set background=dark

set wildmenu

set showmatch
set hlsearch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" -----------------------------------------------------------------------------
" Formatting
" -----------------------------------------------------------------------------

" default indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" wrap
set wrap
set linebreak

if exists("+colorcolumn")
  set colorcolumn=80
endif

" -----------------------------------------------------------------------------
" status line
" -----------------------------------------------------------------------------

" status line
set laststatus=2

" -----------------------------------------------------------------------------
" ctrlp
" -----------------------------------------------------------------------------

nnoremap <leader>t :CtrlP<CR>

" -----------------------------------------------------------------------------
" undotree
" -----------------------------------------------------------------------------

nnoremap <leader>u :UndotreeToggle<CR>

" -----------------------------------------------------------------------------
" tcomment
" -----------------------------------------------------------------------------

nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" -----------------------------------------------------------------------------
" language-specific
" -----------------------------------------------------------------------------
"
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END
