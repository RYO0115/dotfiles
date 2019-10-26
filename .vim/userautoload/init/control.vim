nnoremap <space>. :<c-u>tabedit $MYVIMRC<CR>
nnoremap <space>c :<c-u>tabedit ~/.vim/userautoload/init/control.vim<CR>

nnoremap <space>m :<c-u>tabedit ~/.vim/userautoload/init/basic.vim<CR>
nnoremap <space>h :<c-u>tabedit ~/.vim/vimcommand.txt<CR>
inoremap jj <Esc>

nnoremap + <C-a>
nnoremap - <C-x>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

"nnoremap <space><space> :<c-u>MRU<CR>
if has("clipboard")
	vnoremap <S-y> "*y
	vnoremap <y> "*y
endif


nmap <silent> <Esc><Esc> :nohlsearch<CR>


nnoremap <S-Left> <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up> <C-w>-<CR>
nnoremap <S-Down> <C-w>+<CR>

nnoremap <C-h> gT
nnoremap <C-l> gt

"nnoremap <C-j> <S-j>
nnoremap <S-j> <C-d>
nnoremap <S-k> <C-u>

nnoremap <C-e> :q!<CR>

nnoremap [q    :cprevious
nnoremap ]q    :cnext
nnoremap tn    :tabnew<CR>

nnoremap :ex     :Texplore<CR>


nnoremap :Ex :<c-u>tabedit .<CR>
map <C-n> :NERDTreeToggle<CR>

nnoremap r+	:set formatoptions+=ro<CR>
nnoremap r-	:set formatoptions-=ro<CR>


nnoremap *[ <C-W><CR><C-W>T
autocmd QuickFixCmdPost *grep* cwindow
autocmd QuickFixCmdPost vim cwindow

"---------------virtualモードの時にスターで選択位置のコードを検索するようにする--------------------"
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction


"---------------NERDTree----------------------"
let NERDTreeShowHidden = 1
nnoremap <silent><C-e> :NERDTreeFocusToggle<CR>

" デフォルトでツリーを表示させる
let g:nerdtree_tabs_open_on_console_startup=1

autocmd VimEnter * execute 'NERDTree'
" 他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q 

"-------------------------------------------"

"---------------grep------------------------"
" <Space>cd で編集中ファイルのカレントディレクトリに移動
command! -nargs=? -complete=dir -bang CD  call s:ChangeCurrentDir('<args>', '<bang>') 
function! s:ChangeCurrentDir(directory, bang)
    if a:directory == ''
        lcd %:p:h
    else
        execute 'lcd' . a:directory
    endif
 
    if a:bang == ''
        pwd
    endif
endfunction
nnoremap <silent> <Space>cd :<C-u>CD<CR>
 
" <Space>cr で git ルート（プロジェクトルート）のディレクトリに移動
command! -nargs=? -complete=dir -bang CDROOT  call s:ChangeRootDir() 
function! s:ChangeRootDir()
    let rootDir = system("git rev-parse --show-toplevel")
    execute 'lcd' . rootDir
endfunction
nnoremap <silent> <Space>r :<C-u>CDROOT<CR>
 
" <Space>cg でカーソル下文字列で、編集中ファイルのカレントディレクトリを vimgrep
noremap <Space>cg :<C-u>CD<CR>:vimgrep /<C-r><C-w>/ **/* \| cwin<CR>
 
" <Space>g でカーソル下文字列で、ルートディレクトリを vimgrep
noremap <Space>g :<C-u>CDROOT<CR>:vimgrep /<C-r><C-w>/ **/* \| cwin<CR>

"------------------------------------------"

