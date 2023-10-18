link:
	-ln .zshrc ~/.zshrc
	-ln .bash_aliases ~/.bash_aliases
	-ln .tmux.conf ~/.tmux.conf
	-ln .vimrc ~/.vimrc

unlink:
	-rm ~/.zshrc
	-rm ~/.bash_aliases
	-rm ~/.tmux.conf
	-rm ~/.vimrc

