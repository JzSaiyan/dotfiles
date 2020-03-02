syntax on
set nocompatible

filetype off
filetype plugin indent on

set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically reread changed files without asking me anything
set autoindent                  
set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set number                   " Show line numbers
set showcmd                  " Show me what I'm typing
set noswapfile               " Don't use swapfile
set nobackup                 " Don't create annoying backup files
set splitright               " Split vertical windows right to the current windows
set splitbelow               " Split horizontal windows below to the current windows

" vim-afterflow colorscheme -> https://github.com/danilo-augusto/vim-afterglow.git
colorscheme afterglow

" vim-go plugin -> https://github.com/fatih/vim-go
" ==================== vim-go ====================

" Run goimports along gofmt on each save
let g:go_fmt_command = "goimports"

" Automatically get signature/type info for object under cursor
let g:go_auto_type_info = 1

" Autocomplete prompt to appear automatically whenever press the dot (.)
" au filetype go inoremap <buffer> . .<C-x><C-o>

" NERDTree plugin -> https://github.com/preservim/nerdtree
" ==================== NERDTree ====================

" open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" focus the right window on opening a file
autocmd! VimEnter * NERDTree | wincmd w

" vim-airline plugin -> https://github.com/vim-airline/vim-airline
" ==================== vim-airline ====================
let g:airline_theme='dark'

" vim-fugitive plugin -> https://github.com/tpope/vim-fugitive
" ==================== vim-fugitive ====================
