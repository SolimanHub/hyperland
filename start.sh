#!/usr/bin/bash

# Configurar colores
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
NC='\033[0m'

DIR_CONFIG="s"  

echo "Recuerda colocar este directorio en el mejor lugar de tu configuracion"
read -rp "Esta el directorio en un lugar seguro? [S/n]: " user_input

if [[ -n "$user_input" ]]; then
  DIR_CONFIG=${user_input,,}  # Convertimos a minúsculas
fi

if [[ "$DIR_CONFIG" != "s" ]]; then
  echo "No has confirmado que el directorio está en un lugar seguro. Abortando."
  exit 1
fi

create_symlink() {
  local source="$1"
  local target="$2"

  # Verificar si el origen existe
  if [[ ! -e "$source" ]]; then
    echo "❌ Error: El archivo/directorio original no existe: $source"
    return 1
  fi

  # Si el destino existe, borrarlo (sea archivo, directorio o enlace)
  if [[ -e "$target" ]] || [[ -L "$target" ]]; then
    rm -rf "$target"
    echo "🗑️  Eliminado previo enlace/archivo: $target"
  fi

  # Crear el enlace simbólico
  ln -s "$source" "$target"
  echo "✅ Enlace simbólico creado: $target -> $source"
}

# Crear los enlaces simbólicos
create_symlink "$(pwd)/alias" "$HOME/.alias"
create_symlink "$(pwd)/zshrc" "$HOME/.zshrc"
create_symlink "$(pwd)/alacritty" "$HOME/.config/alacritty"
create_symlink "$(pwd)/hyperland/hypr" "$HOME/.config/hypr"
create_symlink "$(pwd)/hyperland/waybar" "$HOME/.config/waybar"
create_symlink "$(pwd)/hyperland/wofi" "$HOME/.config/wofi"

echo -e "${YELLOW}Recuerda ln -s /usr/bin/disk-info${NC}"
echo -e "${GREEN}🎉 ¡Todos los enlaces simbólicos se crearon correctamente!${NC}"
