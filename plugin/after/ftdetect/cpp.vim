" C++
autocmd FileType cpp map <F5> :w<CR> :!clear<CR> :!g++ -std=c++14 % -o %< && ./%< <CR>

