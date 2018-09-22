"------------------------------------------------------------------------------
" Basic settings
"     source: https://github.com/kaochenlong/eddie-vim2
"------------------------------------------------------------------------------
set nocompatible              " not compatible with the old-fashion vi mode
set backspace=2               " allow backspacing over everything in insert nc >kkmode
set history=1000              " keep 1000 lines of command line history
set undolevels=100
set ruler                     " show the cursor position all the time
set autoread                  " auto read when file is changed from outside
set wrap
set linebreak
set nolist
set hidden
set linespace=0
set cursorline
set nofoldenable
set number
set numberwidth=4
set title
set showmode
set nobomb                    " no BOM(Byte Order Mark)
set nostartofline
set laststatus=2
set clipboard+=unnamed
set splitright                " always open vertical split window in the right side
set splitbelow                " always open horizontal split window below
set scrolloff=4               " start scrolling when n lines away from margins
set switchbuf=useopen
set showtabline=2             " always show tab
set wildmode=longest,list     " use emacs-style tab completion when selecting files, etc
set wildmenu                  " make tab completion for files/buffers act like bash
set key=			                " disable encryption
set synmaxcol=128
set viminfo=			            " disable .viminfo file
set ttyfast                   " send more chars while redrawing
set lazyredraw

filetype on                   " enable filetype detection
filetype indent on            " enable filetype-specific indenting
filetype plugin on            " enable filetype-specific plugins

syntax on                     " syntax highlight
set hlsearch                  " search highlighting
set incsearch                 " incremental search
syntax enable
set t_Co=256
try
  colorscheme solarized_dark
catch
endtry

set nobackup                  " no *~ backup files
set noswapfile
set nowritebackup
set copyindent                " copy the previous indentation on autoindenting
set ignorecase                " ignore case when searching
set smartcase
set smarttab                  " insert tabs on the start of a line according to
set expandtab                 " replace <TAB> with spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4
set shortmess=Ia              " remove splash wording

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

" file encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

" cursorline switched while focus is switched to another split window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" shell setting for RVM
set shell=/bin/sh

"-----------------------------------------------------------------------------
" Enable c++11/14
"-----------------------------------------------------------------------------
let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++'

"-----------------------------------------------------------------------------
" Cpp-enhanced highlight
"     source: https://github.com/octol/vim-cpp-enhanced-highlight
"-----------------------------------------------------------------------------
" To solve issues with flagging braces as errors
let c_no_curly_error=1
" Highlighting of member variables
let g:cpp_member_variable_highlight=1
" Highlighting of class names in declarations
let g:cpp_class_decl_highlight=1
" Highlighting of library concepts
"let g:cpp_concepts_highlight=1
" Disable highlighting of user defined functions
"let g:cpp_no_function_highlight=1

" Two ways to hightlight template functions
" 1: Works in most cases, but can be a little slow on large files
"let g:cpp_experimental_simple_template_highlight=1
" 2: A faster implementation but has some corner cases where it doesn't work
"let g:cpp_experimental_template_highlight=1

"-----------------------------------------------------------------------------
" Window size of Taglist
"-----------------------------------------------------------------------------
let Tlist_Inc_Winwidth=30
"let Tlist_Auto_Open=1
let Tlist_Use_Right_Window=1

"-----------------------------------------------------------------------------
" Use system clipboard as default register
"-----------------------------------------------------------------------------
set clipboard=unnamed
