link: link.sh
	bash $<

unlink: unlink.sh
	bash $<

viridis.csv: viridis.R
	R -f $<

setup_vim: setup_vim.sh
	bash $<

install_ubuntu:
	sudo apt install fzf
	curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
	sudo apt install eza
