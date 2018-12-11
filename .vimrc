set runtimepath+=~/.vim/
runtime! bundle/neobundle.vim
runtime! userautoload/init/*.vim
runtime! userautoload/plugin/*.vim

set backupdir=~/.vim/.vimbackup

"windows kaoriya—pİ’è
set noundofile
set undodir=~/.vim/.undodir


if !has('gui_running')
    set timeout timeoutlen=1000 ttimeoutlen=50
endif

nnoremap <expr> gr ':Rgrep<CR>'
