link:
	-ln .bash_aliases ~/.bash_aliases
	-ln .tmux.conf ~/.tmux.conf
	-ln .vimrc ~/.vimrc
	-ln -s tools ~/tools

unlink:
	-rm ~/.bash_aliases
	-rm ~/.tmux.conf
	-rm ~/.vimrc
	-rm ~/tools
