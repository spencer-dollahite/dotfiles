" Return cursor to previous location
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

let mapleader = " "
set showmode
set nocompatible
set number
set showmatch
filetype plugin on
syntax on
set cursorline
set nrformats+=alpha
set path+=**
set wildmenu
set nrformats+=alpha
set mouse=a
set autoindent

" Tabs
set tabstop=4 " tabs expand to 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab

" Color & Theme Control
set background=dark
colorscheme default

" Cursor control
let &t_SI = "\e[5 q"  " blinking I-beam in insert mode
let &t_EI = "\e[ q"  " default cursor (usually blinking block) otherwise

" Stop autocommenting on new lines
set formatoptions-=cro

" Undo persistent across file closing and opening
set undofile

" Wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

" Kebindings
" Spell Checker
nnoremap <leader>s :setlocal spell!<CR>

" Run python
"nnoremap <leader>pr :!python3 %<CR>
autocmd FileType python map <buffer> <leader>pr :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
 
" Run python from instert mode
"autocmd FileType python imap <buffer> <leader>pr <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
