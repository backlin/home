link:
	-ln .zshrc ~/.zshrc
	-ln .bash_aliases ~/.bash_aliases
	-ln .tmux.conf ~/.tmux.conf
	-ln .vimrc ~/.vimrc
	mkdir -p ~/.warp/themes
	-cp warp-themes/* ~/.warp/themes/ # Warp does not accept links, append only

unlink:
	-rm ~/.zshrc
	-rm ~/.bash_aliases
	-rm ~/.tmux.conf
	-rm ~/.vimrc

