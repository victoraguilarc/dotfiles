
git clone --bare git@github.com:victoraguilarc/dotfiles.git $HOME/.cfg

# 2. Define un alias para gestionarlo fácilmente
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> ~/.zshrc
source ~/.zshrc

# 3. Oculta archivos no versionados
dotfiles config --local status.showUntrackedFiles no

# 4. Haz checkout de tus dotfiles
dotfiles checkout

# 5. Empuja y jala cambios
# Para añadir y subir:
dotfiles add .zshrc .gitconfig
dotfiles commit -m "chore: dotfiles actualizados"
dotfiles push

# Para descargar actualizaciones en otro equipo:
dotfiles pull --rebase
