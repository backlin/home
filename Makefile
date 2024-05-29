link: link.sh
	bash $<

unlink: unlink.sh
	bash $<

viridis.csv: viridis.R
	R -f $<

setup_vim: setup_vim.sh
	bash $<

