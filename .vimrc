call plug#begin('~/.vim_plugged')

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'neovimhaskell/haskell-vim'
Plug 'altercation/vim-colors-solarized'

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

" Disable any indentation features for certain languages
autocmd Filetype haskell setlocal ts=2 sw=2 expandtab noautoindent nocindent nosmartindent
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab noautoindent nocindent nosmartindent
autocmd Filetype json setlocal ts=2 sw=2 expandtab noautoindent nocindent nosmartindent

" Improve some of the coloring choices. These
" are chosen with the solarized color scheme 
" in mind.
hi Comment   ctermfg=2 cterm=bold
hi Structure ctermfg=4 cterm=none
hi Todo      ctermfg=1 cterm=none
hi Pmenu     cterm=bold ctermfg=0 ctermbg=7

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
let g:haskell_indent_disable = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" Do not create swap files in same directory as files I edit.
" The double slash at the end is important. It tells vim to
" recreate the entire directory leading up to the file. This
" prevents collisions.
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//
