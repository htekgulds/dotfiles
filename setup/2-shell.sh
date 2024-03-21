# Install shell related stuff

# zsh
echo "installing zsh"
sudo apt install -y zsh
chsh -s $(which zsh)

# oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "installing oh-my-zsh"
    echo "exit" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "oh-my-zsh already exists, skipping"
fi

# powerlevel10k
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
    printf "installing zsh theme: ${RED}powerlevel10k${NC}"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
else
    printf "zsh theme already installed: ${RED}powerlevel10k${NC}\n"
fi

# zsh-syntax-highlighting
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    printf "installing zsh plugin: ${RED}zsh-syntax-highlighting${NC}"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    rm -f $HOME/.zshrc # removing default settings
else
    printf "zsh plugin already installed: ${RED}zsh-syntax-highlighting${NC}"
fi
