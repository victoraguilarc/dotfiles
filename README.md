# Personal Dotfiles


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

 > Es muy importante hacer los cambios en un solo lado, ya sea en el repo o en la carpeta de usuario
   esto para evitar conflictos constantes

## Setup

#### Node Version
```bash
nvm install lts/jod
nvm alias default lts/jod    # la fijamos como predeterminada
```

### Extensiones zsh
```bash
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
```
**Theme: powerlevel10k**
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
p10k configure  # para configurar
```

### Configure global python

```bash
brew install pyenv
pyenv install 3.12
pyenv global 3.12
```
