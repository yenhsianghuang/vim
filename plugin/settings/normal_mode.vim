" =================
"  key remap
" =================

" identation
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

" move lines up and down using ctrl+[jk]
nmap <c-k> mz:m-2<cr>`z
nmap <c-j> mz:m+<cr>`z
vmap <c-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <c-k> :m'<-2<cr>`>my`<mzgv`yo`z

" comment
map <Leader><Leader> <Leader>c<space>

" cancel searched highlight
noremap <CR> :nohlsearch<CR>

" remap VIM 0
map 0 ^

" associate gcc with .c files
" au BufEnter *.c compiler gcc
" compile .c with <F7>
map <F7> :w<CR> :!clear<CR> :!gcc % -o %< && ./%< <CR>
" compile .cpp with <F8>
"map <F8> :w<CR> :!clear<CR> :!g++ -std=c++11 % -o %< && ./%< <CR>

" vertical resize
nmap + <C-W>>
nmap - <C-W><

" enable scrolling using mouse
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" buffer shortcuts
nmap <Leader>d :bdelete

" move to eol and type semi-colon
imap <C-Y> <Esc>A;

" Change working directory to currently opened file
map <Leader>c :cd %:h<CR>

map <F12> :colorscheme solarized_light<CR>
