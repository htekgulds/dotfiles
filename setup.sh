# Colors
RED='\033[0;31m'
NC='\033[0m' # No Color

# run setup scripts
chmod +x setup/*.sh
for script in setup/*.sh; do
    printf "running ${RED}$script${NC}\n"
    $(pwd)/$script
done

# copy dotfiles
for file in home/*; do
    name=$(basename $file)
    if [ ! -s "$HOME/.$name" ]; then
        printf "copying ${RED}$file${NC} as ${RED}$HOME/.$name${NC}\n"
        ln -s $(pwd)/$file $HOME/.$name
    else
        printf "${RED}$HOME/.$name${NC} already exists, skipping\n"
    fi
done

# copy bins
chmod +x bin/*
if [ ! -s "$HOME/.local/bin" ]; then
    printf "copying ${RED}bin${NC} as ${RED}$HOME/.local/bin${NC}\n"
    ln -s $(pwd)/bin $HOME/.local/bin
else
    printf "${RED}$HOME/.$name${NC} already exists, skipping\n"
fi
