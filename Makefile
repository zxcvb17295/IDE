tmux:
	mkdir -p ~/.tmux/plugins/
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	ln -nsiF $(PWD)/tmux.conf $(HOME)/.tmux.conf
	tmux source ~/.tmux.conf
