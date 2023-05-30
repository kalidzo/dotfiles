arch_dependencies=(
	"hyprland"
      	"sddm"	
)

# install dependencies 
if [ -f /etc/arch-release ]; then
  if [ -e /bin/paru ]; then
    paru -Sy "${arch_dependencies[@]}"|| (echo "something went wrong. Trying again..." && paru -Sy "${arch_dependencies[@]}") 
  fi
  if [ -e /bin/yay ]; then
    yay -Sy "${arch_dependencies_dependencies[@]}"|| (echo "something went wrong. Trying again..." && yay -Sy "${arch_dependencies[@]}") 
  fi
fi

# configure configs
cp ~/dotfiles/* ~/.config/ -r

