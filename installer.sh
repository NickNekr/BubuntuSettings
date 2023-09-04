apt-get update
apt install curl wget git
apt-get install zsh
cd home
git clone https://github.com/NickNekr/BubuntuSettings.git
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv BubuntuSettings/.zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
apt install software-properties-common -y
add-apt-repository ppa:deadsnakes/ppa
apt-get update
apt install python3.10
alias python=/usr/bin/python3.10
alias python3=/usr/bin/python3.10
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/3270.zip
apt-get install zip
unzip 3270.zip -d ~/.fonts
apt install fontconfig
fc-cache -fv
apt-get install software-properties-common
add-apt-repository ppa:neovim-ppa/unstable
apt-get update
apt-get install python-dev python3-pip python3-dev python3-pip
apt-get install neovim
apt-get install npm
npm install tree-sitter-cli
apt-get install ripgrep
apt-get install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit /usr/local/bin
add-apt-repository ppa:daniel-milde/gdu
apt-get update
apt-get install gdu
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.9.6/bottom_0.9.6_amd64.deb
dpkg -i bottom_0.9.6_amd64.deb
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone https://github.com/NickNekr/my_user_example_astronvim.git ~/.config/nvim/lua/user
cd ~
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh
bash /tmp/nodesource_setup.sh
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" |  tee /etc/apt/sources.list.d/nodesource.list
apt-get update
apt-get install nodejs -y
apt-get install xclip
