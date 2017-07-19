call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" General stuff
syntax on
set number
"set background=dark
set background=light
"colorscheme slate
colorscheme desert

" White spaces
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Indentation
set smartindent
set autoindent
filetype plugin indent on

if has("autocmd")
    autocmd bufwritepost index.Rmd !./make.r
endif

autocmd FileType javascript map <F5> :w<CR>:!node "%"<CR>
autocmd FileType python map <F5> :w<CR>:!python "%"<CR>
autocmd FileType r map <F5> :w<CR>:!Rscript "%"<CR>
autocmd FileType llvm  map <F5> :w<CR>:!lli "%"<CR>
autocmd FileType haskell  map <F5> :w<CR>:!ghci "%"<CR>

" save vim history
set undofile
set undodir=/tmp

augroup filetype
  au! BufRead, BufNewFile *.ll set filetype=llvm
augroup END
