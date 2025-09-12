#!/usr/bin/bash

DIR_CONFIG="s"  

echo "Recuerda colocar este directorio en el mejor lugar de tu configuracion"
read -rp "Esta el directorio en un lugar seguro? [S/n]: " DIR_CONFIG
DIR_CONFIG=${DIR_CONFIG,,}

#if [[ "$DIR_CONFIG=" != "s" ]]; then
#  echo $DIR_CONFIG
#  exit
#fi
ln -s $(pwd)/export $HOME/.export
