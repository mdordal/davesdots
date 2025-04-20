function! ReformatPy()
     let save_pos = getpos(".")
     execute "%!black -q -"
     call setpos(".", save_pos)
endfunction

map <C-L> :call ReformatPy() <CR>
imap <C-L> <C-o>:call ReformatPy() <CR>
vmap <C-L> :call ReformatPy() <CR>
