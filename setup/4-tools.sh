# Various tools

sudo apt install -y htop vim neofetch bat fzf exa duf aria2 rsync

# zoxide
wget https://github.com/ajeetdsouza/zoxide/releases/download/v0.9.4/zoxide_0.9.4-1_amd64.deb
sudo dpkg -i zoxide_0.9.4-1_amd64.deb
rm -f zoxide_0.9.4-1_amd64.deb

# bat
wget https://github.com/sharkdp/bat/releases/download/v0.24.0/bat_0.24.0_amd64.deb
sudo dpkg -i bat_0.24.0_amd64.deb
rm -f bat_0.24.0_amd64.deb

# ripgrep
wget https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
sudo dpkg -i ripgrep_14.1.0-1_amd64.deb
rm -f ripgrep_14.1.0-1_amd64.deb

# httpie
curl -SsL https://packages.httpie.io/deb/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/httpie.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/httpie.gpg] https://packages.httpie.io/deb ./" | sudo tee /etc/apt/sources.list.d/httpie.list >/dev/null
sudo apt update -y
sudo apt install -y httpie
