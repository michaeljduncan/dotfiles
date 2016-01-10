" better safe than sorry
set nocompatible

" number of columns to autoindent 
set shiftwidth=4
" expand tabs to spaces
set expandtab
" number of spaces per tab
set tabstop=4
" columns per tab in insert mode
set softtabstop=4

" start search as you begin typing search string  
set incsearch 
" ignore case when searching
set ignorecase 
" highlight search results
set hlsearch

" show line numbers
set nu

filetype on
filetype indent on
filetype plugin on
" use syntax complete if nothing else available
if has("autocmd") && exists("+omnifunc")
   autocmd Filetype *
              \ if &omnifunc == "" |
              \     setlocal omnifunc=syntaxcomplete#Complete |
              \ endif
endif

let php_sql_query=1
let php_htmlInStrings=1


" turn on syntax highlighting
syntax enable
" set background=dark
" colorscheme solarized

" show which mode you are in
set showmode

" command line completion 
set wildmenu
" display entire list and tab through it
set wildmode=longest:list,full

" set the status line
set ls=2
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd
set backspace=start,eol
