echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> ~/.zshrc
source ~/.zshrc
dotfiles config --local status.showUntrackedFiles no

dotfiles checkout

dotfiles add $HOME/.zshrc $HOME/.gitconfig
dotfiles commit -m "chore: dotfiles actualizados"
dotfiles push -u origin main
