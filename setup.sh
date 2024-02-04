# zsh-syntax-highlighting setup as zsh plugin
# [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

[ ! -s "$HOME/.zshrc" ] && ln -s $(pwd)/.zshrc $HOME/.zshrc
[ ! -s "$HOME/.npmrc" ] && ln -s $(pwd)/.npmrc $HOME/.npmrc
[ ! -s "$HOME/.p10k.zsh" ] && ln -s $(pwd)/.p10k.zsh $HOME/.p10k.zsh