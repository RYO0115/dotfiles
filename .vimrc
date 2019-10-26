set runtimepath+=~/dotfiles/.vim/
runtime! bundle/neobundle.vim
runtime! userautoload/init/*.vim
runtime! userautoload/plugin/*.vim

set backupdir=~/.vim/.vimbackup

set noundofile
set undodir=~/.vim/.undodir

set belloff=all

if !has('gui_running')
    set timeout timeoutlen=1000 ttimeoutlen=50
endif

nnoremap <expr> gr ':Rgrep<CR>'

