#!/usr/bin/env zsh
set -e  # aborta en el primer error

# URL SSH de tu repo – cambia USERNAME
REPO="git@github.com:victoraguilarc/dotfiles.git"

# 1. Clona el repo como bare en ~/.cfg si aún no existe
if [[ ! -d $HOME/.cfg ]]; then
  git clone --bare "$REPO" "$HOME/.cfg"
fi

# 2. Define el alias "dotfiles" (solo se añade si falta)
grep -qxF "alias dotfiles='/usr/bin/git --git-dir=\$HOME/.cfg/ --work-tree=\$HOME'" \
        "$HOME/.zshrc" || \
echo "alias dotfiles='/usr/bin/git --git-dir=\$HOME/.cfg/ --work-tree=\$HOME'" >> "$HOME/.zshrc"

# 3. Usa el alias en la sesión actual
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# 4. Oculta archivos sin seguimiento para evitar ruido
dotfiles config status.showUntrackedFiles no

# 5. Realiza el checkout (sobrescribe solo si el archivo no existe)
echo "🏗  Instalando dotfiles…"
if ! dotfiles checkout 2>/tmp/dotfiles-conflictos; then
  echo "⚠️  Se encontraron conflictos."
  echo "    Se listan en /tmp/dotfiles-conflictos"
  echo "    Mueve o elimina esos archivos y vuelve a ejecutar:"
  echo "      dotfiles checkout"
else
  echo "✅  Dotfiles instalados."
fi
