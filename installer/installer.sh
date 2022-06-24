if type "git" > /dev/null 2>&1; then
		git clone https://github.com/rp-agota/dotfiles.git ~/dotfiles
		cd ~/dotfiles
		make install
else
    echo "[Error] git doesn't exist!"
	exit 1
fi