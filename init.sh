git clone --bare git@github.com:victoraguilarc/dotfiles.git $HOME/.cfg
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> ~/.zshrc
source ~/.zshrc
dotfiles config --local status.showUntrackedFiles no
dotfiles pull --rebase
