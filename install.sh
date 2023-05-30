# clone the configs
git clone https://github.com/kalidzo/dotfiles ~/dotfiles

arch_packages=(
		"btop"
                "dmenu"
		"picom"
		"polybar"
		"i3"
		"zsh"
		"alacritty"
		"ttf-jetbrains-mono-nerd"
		"flameshot"
		"feh"
		"helix"
		"mpv"
		"xwinwrap-0.9-bin"
                "zsh"
    )

# install required packages
if [ -f /etc/arch-release ]; then
  if [ -e /bin/paru ]; then
    paru -Sy "${arch_packages[@]}"|| (echo "something went wrong. Trying again..." && paru -Sy "${arch_packages[@]}") 
  fi
  if [ -e /bin/yay ]; then
    yay -Sy "${arch_packages[@]}"|| (echo "something went wrong. Trying again..." && yay -Sy "${arch_packages[@]}") 
  fi
fi

