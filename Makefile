link:
	-ln .bash_aliases ~/.bash_aliases
	-ln .tmux.conf ~/.tmux.conf
	-ln .vimrc ~/.vimrc

unlink:
	-rm ~/.bash_aliases
	-rm ~/.tmux.conf
	-rm ~/.vimrc

