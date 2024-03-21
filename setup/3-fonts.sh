# Install Jetbrains Mono Nerd Font (good for terminal use)

if [ ! -d "$HOME/.fonts" ]; then
    rm -rf fonts
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
    unzip JetBrainsMono.zip -d fonts/
    ln -s $(pwd)/fonts $HOME/.fonts
    fc-cache -f -v
    rm -f JetBrainsMono.zip
else
    echo "$HOME/.fonts already exists, skipping"
fi
