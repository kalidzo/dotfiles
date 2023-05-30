curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

source ~/.zshrc

nvm install 18

nvm use 18

# install bash lsp
npm i -g bash-language-server

# install html css json eslint lsp
npm i -g vscode-langservers-extracted

# install TypeScript lsp
npm install -g typescript typescript-language-server

# install pyright
npm install -g pyright

# install vueJS lsp
npm install -g vls

# install rust-analyzer
sudo pacman -Sy rust-analyzer
sudo pacman -Sy lldb
#install markdown lsp
wget https://github.com/artempyanykh/marksman/releases/download/2023-03-04/marksman-linux
mv marksman-linux marksman
mv marksman ~/.local/bin/ && chmod +x ~/.local/bin/marksman

source ~/.zshrc