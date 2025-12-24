apt update
apt upgrade -y

apt install git -y
apt install pre-commit -y
apt install 7zip -y
apt install curl -y
apt install make -y
apt install just -y
apt install wl-clipboard -y

apt install zsh -y
apt install vim -y
apt install tmux -y
apt install ripgrep -y
apt install zoxide -y
apt install fzf -y
apt install eza -y # eza.rocks

apt install golang-go -y
apt install rustup -y
apt install sqlite3 -y
apt install postgresql -y

apt install libreoffice -y
apt install gimp -y
apt install sqlitebrowser -y
apt install vlc -y

# https://mergiraf.org
cargo install --locked mergiraf
# https://difftastic.wilfred.me.uk
mkdir -p ~/git && cd ~/git
git clone git@github.com:Wilfred/difftastic.git
cd difftastic
cargo install --locked --path .
