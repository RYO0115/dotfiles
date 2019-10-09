# dotfiles

## How to Use
You need 4 steps before using this dotfiles

First, git clone this repo to your pc.

	git clone https://github.com/RYO0115/dotfiles.git

Second, make a symbolic link to your home directory.

	ln -s .vimrc ~/Path/To/dotfiles/.vimrc
	ln -s .vim ~/Path/To/dotfiles/.vim

Third, install dein.vim
	mkdir -p ~/.cache/dein
	curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
	sh installer.sh ~/.vim/dein

At Last, reflesh your terminal.


And now you can use this vim settings.
