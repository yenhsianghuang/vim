" C
autocmd FileType c map <F5> :w<CR> :!clear<CR> :!gcc % -o %< && ./%< <CR>

