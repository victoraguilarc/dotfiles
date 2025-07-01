
## Personal Dotfiles


### Configura los dotfiles (solo la primera vez)

Registra el alias `dotfiles` en la configuracion personal, este alias ayudara a guardar nuevs cambios en el repo.

```zsh
chmod +x init.sh
zsh init.sh
source ~/.zshrc   # recarga alias
```

### Push de nuevo cambios

```zsh
dotfiles status
dotfiles add .zshrc
dotfiles commit -m "feat: new alias"
dotfiles push
```

### Ignorar archivos
Agregar las carpetas o archivos que deseas ignorar en el archivo `$HOME/.cfgignore`


### Migrar a otro equipo

```bash
git clone --bare git@github.com:victoraguilarc/dotfiles.git $HOME/.cfg
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
dotfiles checkout
source ~/.zshrc
```
