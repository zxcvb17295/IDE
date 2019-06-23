tmux:
	@@[ -d $(HOME)/.tmux/plugins/ ] && echo "/.tmux/plugins/ is exists" || mkdir -p $(HOME)/.tmux/plugins/
	@@[ -d $(HOME)/.tmux/plugins/tpm ] && echo "/.tmux/plugins/tpm is exists" || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	@@[ -f $(HOME)/.tmux.conf ] && echo ".tmux.conf is exists" || ln -nsiF $(PWD)/tmux.conf $(HOME)/.tmux.conf
	tmux source ~/.tmux.conf || echo "*** Check tmux is running ***"
