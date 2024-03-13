link:
	-ln .bash_aliases ~/.bash_aliases
	-ln .bazelrc ~/.bazelrc
	-ln .mac_env ~/.mac_env
	-ln .psqlrc ~/.psqlrc
	-ln .tmux.conf ~/.tmux.conf
	-ln .vimrc ~/.vimrc
	-ln .zshrc ~/.zshrc
	mkdir -p ~/.warp/themes
	-cp warp-themes/* ~/.warp/themes/ # Warp does not accept links, append only

unlink:
	-rm ~/.bash_aliases
	-rm ~/.bazelrc
	-rm ~/.mac_env
	-rm ~/.psqlrc
	-rm ~/.tmux.conf
	-rm ~/.vimrc
	-rm ~/.zshrc

viridis.csv: viridis.R
	R -f $<

