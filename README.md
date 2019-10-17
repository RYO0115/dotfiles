# dotfiles
## What is dotfiles
This repo is a setting file for vim editor.
This project is also set for Ubuntu, Mac (and also for Windows).

Before trying this project, please check below settings.

## Check Setting
At first, type the command below.

	vim --version | grep clipboard

This is a command to check whether your vim can share the clipboard.
(check whether you can copy and paste between vim and other application)

Look at the **clipboard** and **xterm_clipboard** are set to "+".
Like this, 

	+clipboard
	+xterm_clipboard

if these two were shown as "-", this means your vim cannot share the clipboard.

To fix this, you have to uninstall your vim, and reinstall other vim.

	sudo apt-get install vim-***

Ubuntu's default vim is **vim-tiny** and this version cannnot use the clipboard.

After you checked this, please move to next section.

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
	sh installer.sh ~/.cache/dein

At Last, reflesh your terminal.


And now you can use this vim settings.


