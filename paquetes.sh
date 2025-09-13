#!/bin/bash

# Actualizar la base de datos de paquetes
sudo pacman -Syy

# Instalar todos los paquetes necesarios para la configuración de Hyperland
sudo pacman -S --needed \
  waybar \
  adobe-source-code-pro-fonts \
  noto-fonts-emoji \
  otf-font-awesome \
  ttf-droid \
  ttf-fantasque-sans-mono \
  ttf-jetbrains-mono \
  ttf-jetbrains-mono-nerd \
  ttf-font-awesome \
  network-manager-applet \
  copyq \
  wl-clipboard \
  mesa \
  arandr \
  nodejs \
  npm \
  python-pip \
  ruby \
  go \
  lua \
  brightnessctl \
  adwaita-icon-theme \
  papirus-icon-theme \
  alacritty \
  rsync \
  gtkmm3 \
  jsoncpp \
  libsigc++ \
  fmt \
  wayland \
  chrono-date \
  spdlog \
  gtk3 \
  gobject-introspection \
  libgirepository \
  libpulse \
  libnl \
  libappindicator-gtk3 \
  libdbusmenu-gtk3 \
  libmpdclient \
  sndio \
  libevdev \
  libxkbcommon \
  upower \
  meson \
  cmake \
  scdoc \
  wayland-protocols \
  glib2-devel
  #clang \
