
"-------------------
"for python
"------------------
" autopep 
" original http://stackoverflow.com/questions/12374200/using-uncrustify-with-vim/15513829#15513829
function! Preserve(command)
    " Save the last search.
    let search = @/
    " Save the current cursor position.
    let cursor_position = getpos('.')
    " Save the current window position.
    normal! H
    let window_position = getpos('.')
    call setpos('.', cursor_position)
    " Execute the command.
    execute a:command
    " Restore the last search.
    let @/ = search
    " Restore the previous window position.
    call setpos('.', window_position)
    normal! zt
    " Restore the previous cursor position.
    call setpos('.', cursor_position)
endfunction

"function! Autopep8()
"    "--ignote=E501: 一行の長さの補正を無視"
"    call Preserve(':silent %!autopep8 --ignore=E501 -')
"endfunction

" Shift + F でautopep自動修正
"nnoremap <S-f> :call Autopep8()<CR>

" 自動保存
"autocmd BufWrite *.{py} :call Autopep8()

"--------------------------
"end for python
"--------------------------
