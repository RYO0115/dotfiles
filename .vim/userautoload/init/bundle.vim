
"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定

if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
"set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
"NeoBundleFetch 'Shougo/neobundle.vim'

" NERDTREEを設定
NeoBundle 'scrooloose/nerdtree'

"イコールなどで自動整形してくれる
NeoBundle 'junegunn/vim-easy-align'

"関数の一覧?を生成する
"NeoBundle 'vim-scripts/DoxygenToolkit'
"
"grep
"NeoBundle 'vim-scripts/grep.vim'

"括弧の自動挿入
NeoBundle 'Townk/vim-autoclose'



" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
""""-------------------------
