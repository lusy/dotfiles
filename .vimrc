" enable syntax highlighting
syntax enable
set background=dark
colorscheme elflord

" show line numbers
set number

" set tabs to 4 spaces
set ts=4
set shiftwidth=4

" expand tabs into spaces
set expandtab
set smarttab

" indent when moving to the next line while writing code
set autoindent
set smartindent

" enable pathogen
execute pathogen#infect()

au! BufRead,BufNewFile *.htm,*.html,*.js,*.ts,*.css,*.less setlocal tabstop=2 shiftwidth=2 softtabstop=2

au! BufNewFile,BufRead *.py
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set textwidth=79
    set expandtab
    set autoindent
    set fileformat=unix
