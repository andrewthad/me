call plug#begin('~/.local/nvim/plugged')

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'neovimhaskell/haskell-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'Shougo/deoplete.nvim'
Plug 'eagletmt/neco-ghc'

call plug#end()

syntax on
filetype plugin indent on

" let g:haskell_classic_highlighting = 1
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1 
let g:haskell_enable_arrowsyntax = 1 
let g:haskell_enable_pattern_synonyms = 1 
let g:haskell_enable_typeroles = 1 
" let g:haskell_enable_static_pointers = 1 

set nowrap
set statusline=%<%f\ %h%m%r\ %y%=%{v:register}\ %-14.(%l,%c%V%)\ %P

" Turn on solarized
set background=dark
colorscheme solarized

" Disable any indentation features for haskell
autocmd Filetype haskell setlocal ts=2 sw=2 expandtab noautoindent nocindent nosmartindent

" Improve some of the coloring choices. These
" are chosen with the solarized color scheme 
" in mind.
hi Comment   ctermfg=2 cterm=bold
hi Structure ctermfg=4 cterm=none
hi Todo      ctermfg=1 cterm=none
hi Pmenu     cterm=bold ctermfg=0 ctermbg=7

" Enable deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_list = 10
let g:deoplete#auto_complete_delay = 200

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
