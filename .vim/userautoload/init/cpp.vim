
"--------------------
"for c++"
"-------------------
"formatを整える
map <C-K> :pyf /usr/local/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf /usr/local/share/clang/clang-format.py<cr>

"ファイル保存時に自動的にコードをformatしてくれる
function! s:clang_format()
 let now_line = line(".")
 exec ":%! clang-format"
 exec ":" . now_line
endfunction

if executable('clang-format')
 augroup cpp_clang_format
  autocmd!
  autocmd BufWrite,FileWritePre,FileAppendPre *.h call s:clang_format()
  autocmd BufWrite,FileWritePre,FileAppendPre *.cpp call s:clang_format()
 augroup END
endif
"-------------------
"end for c++
"-------------------
