# 🌿 Arch Linux + Hyprland Dotfiles

> **Un entorno de escritorio minimalista, moderno y altamente personalizado inspirado en Parrot OS.**  
> Basado en el gestor de ventanas tiling **Hyprland**, con una estética limpia, funcionalidad potente y un flujo de trabajo optimizado.

![Hyprland Screenshot](https://i.imgur.com/5X8QZzL.png) *(Imagen ilustrativa: estilo Parrot OS con bordes verdes/cian, sombras suaves y blur)*

---

## 📁 Estructura del Repositorio
```text
.
├── alacritty/               # Configuración del terminal Alacritty
├── alias                    # Alias personalizados para la shell
├── config.sh                # Script de instalación de enlaces simbólicos
├── hyperland/
│   ├── hypr/                # Configuración principal de Hyprland (hyprland.conf)
│   ├── waybar/              # Configuración y estilo de Waybar (barra superior)
│   │   ├── config.jsonc
│   │   └── style.css
│   └── wofi/                # Estilo visual de Wofi (launcher)
├── paquetes.sh              # Script para instalar dependencias esenciales
└── zshrc                    # Configuración de Zsh + Oh My Zsh 
```
---

## 🎨 Características Principales

### ✅ Estética: Inspirada en **Parrot OS**
- **Paleta de colores**: Verde (`#00ff41`), cian (`#00d4aa`) y negro profundo (`#1a1b26`).
- **Bordes activos**: Gradiente verde-cian con ángulo de 45°.
- **Blur de fondo**: Suave con efecto de vibrancia y ruido sutil.
- **Sombreado**: Sombras profundas y elegantes bajo ventanas.
- **Redondeo de esquinas**: 8px para una apariencia moderna y acogedora.
- **Opacidad**: Ventanas activas al 95%, inactivas al 85% para mejor contraste.

### 🔧 Gestor de Ventanas: **Hyprland**
- **Layout predeterminado**: `dwindle` con pseudotileado inteligente.
- **Animaciones fluidas**: Personalizadas con curvas `parrotEase`, `parrotIn`, `parrotOut`.
- **Blur habilitado**: Con `size=6`, `passes=2` para rendimiento óptimo.
- **Resizing por borde**: Permite redimensionar ventanas haciendo clic y arrastrando los bordes.
- **Tiling inteligente**: `smart_split`, `preserve_split`, `smart_resizing` activados.
- **Scratchpad**: Acceso rápido a cualquier app con `SUPER+S`.

### 🖥️ Barra Superior: **Waybar**
- **Módulos completos**:
  - `launcher` (icono  → Wofi)
  - `workspaces` (números coloridos, resaltados en verde)
  - `window` (título dinámico con ícono )
  - `clock` (con calendario interactivo al hacer hover)
  - `updates` (alerta visual cuando hay actualizaciones)
  - `cpu`, `memory`, `battery` (con barras de progreso y estados críticos)
  - `pulseaudio`, `network`, `tray`
  - `power` (botón de apagado con ícono  — comentado por defecto)
- **Estilo CSS avanzado**: Degradados, animaciones, efectos hover y colores coherentes con la paleta Parrot.
- **Tooltips visuales**: Información adicional al pasar el mouse.
- **Diseño responsive**: Oculto parcialmente al perder foco (`opacity: 0.2`).

### 🖱️ Input & Gestures
- **Mouse**: Sensibilidad neutra, aceleración plana (`flat`), seguimiento automático de ventana (`follow_mouse = 1`).
- **Touchpad**: Tap-to-click activado, desactivado mientras se escribe.
- **Gestos de workspace**: Deslizamiento con 3 dedos, distancia de 200px, dirección invertida.
- **Dispositivos personalizados**: Soporte para ratón `epic-mouse-v1` con sensibilidad ajustada.

### 🖥️ Terminal: **Alacritty**
- **Fuente**: FiraCode Nerd Font (con soporte para iconos).
- **Tamaño**: 14px para legibilidad óptima.
- **Opacidad**: 90% para integración con el blur.
- **Paleta oscuro**: Fondo `#1a1b26`, texto `#a9b1d6` (solo para evitar fatiga visual).

### 🚀 Launcher & Menús: **Wofi**
- **Estilo limpio**: Fondo semi-transparente, bordes finos de cyan.
- **Fuentes claras**: Texto principal blanco, selección con fondo translúcido.
- **Iconos**: Usa el tema Papirus para consistencia visual.

### 💾 Aplicaciones Integradas
| Aplicación | Función |
|-----------|---------|
| `alacritty` | Terminal principal |
| `firefox-developer-edition` | Navegador preferido |
| `thunar` | Gestor de archivos |
| `wofi` | Launcher y menú de comandos |
| `waybar` | Barra de estado |
| `nm-applet` | Gestor de redes |
| `copyq` | Historial de portapapeles |
| `hyprpaper` | Wallpaper (requiere instalación manual) |
| `brightnessctl` | Control de brillo sin root |
| `pactl` / `wpctl` | Control de volumen |
| `playerctl` | Controles multimedia |

### ⚙️ Automatización & Productividad
- **Swallowing**: Las terminales se "tragan" automáticamente si se lanzan desde otra terminal (útil para `kitty`).
- **Window Rules**: Reglas específicas para apps como `pavucontrol`, `blueman-manager`, `firefox` (Picture-in-Picture).
- **Opacity por clase**: Ajuste fino de transparencia para mejorar la lectura en ventanas frecuentes.
- **Teclas de acceso rápido**: Todo accesible con `SUPER` + tecla.
- **Scroll de workspaces**: Desplazamiento con rueda del mouse sobre el escritorio.
- **Atajos multimedia**: Soporte completo para teclas de función (XF86).

---

## 🛠️ Instalación

### 1. **Preparar el sistema**
+++bash
# Actualiza el sistema
sudo pacman -Syu

# Instala las dependencias básicas
sudo pacman -S git curl wget base-devel
+++

### 2. **Clonar este repositorio**
+++bash
git clone https://github.com/tuusuario/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
+++

### 3. **Instalar paquetes necesarios**
+++bash
chmod +x paquetes.sh
./paquetes.sh
+++

> **Nota**: Este script instala todo lo necesario: Hyprland, Waybar, Wofi, fuentes, herramientas de audio, red, etc.

### 4. **Aplicar configuración**
+++bash
chmod +x config.sh
./config.sh
+++

> El script crea enlaces simbólicos desde este repositorio hacia tus directorios de configuración:
> - `~/.config/hypr/`
> - `~/.config/waybar/`
> - `~/.config/wofi/`
> - `~/.config/alacritty/`
> - `~/.zshrc`
> - `~/.alias`

### 5. **Reiniciar sesión**
Cierra tu sesión actual y vuelve a iniciar en **Hyprland** desde tu display manager (o usa `startx` si usas startx).

> **Importante**: Si no tienes un DM, asegúrate de tener `elogind` instalado y configura `.xinitrc` para ejecutar `hyprland`.

---

## 📜 Comandos Útiles

| Acción | Atajo |
|-------|-------|
| Abrir terminal | `SUPER + RETURN` |
| Cerrar ventana | `SUPER + Q` |
| Cambiar workspace | `SUPER + [1-0]` |
| Mover ventana a workspace | `SUPER + SHIFT + [1-0]` |
| Mostrar launcher | `SUPER + D` |
| Ejecutar comando | `ALT + D` |
| Toggle flotante | `SUPER + V` |
| Fullscreen | `SUPER + SPACE` |
| Redimensionar ventana | `SUPER + CTRL + J/K/L/I` |
| Desplazar workspaces | `SUPER + Scroll Up/Down` |
| Abrir navegador | `SUPER + F` |
| Abrir gestor de archivos | `SUPER + E` |
| Activar scratchpad | `SUPER + S` |
| Mover ventana al scratchpad | `SUPER + SHIFT + S` |

---

## 🎯 ¿Por qué esta configuración?

- **Minimalista pero potente**: Sin distracciones, solo lo necesario.
- **Consistencia visual**: Todos los componentes (Waybar, Wofi, Alacritty) comparten la misma paleta y filosofía.
- **Rendimiento optimizado**: Blur con pocas pasadas, animaciones fluidas sin sobrecargar GPU.
- **Accesibilidad total**: Todo controlable con teclado; sin necesidad del mouse.
- **Modular y fácil de extender**: Puedes añadir módulos a Waybar, cambiar fuentes, ajustar animaciones, etc., sin romper nada.

---

## 💡 Recomendaciones

- **Fuentes**: Asegúrate de tener instaladas las fuentes Nerd Fonts. Si faltan iconos en Waybar, reinstálalas:
  +++bash
  yay -S ttf-jetbrains-mono-nerd ttf-fantasque-sans-mono-nerd
  +++
- **Wallpaper**: Este repo no incluye wallpaper por defecto. Usa `hyprpaper` con una imagen de fondo oscuro.
- **Bluetooth/Audio**: Si usas Bluetooth, asegúrate de tener `bluez` y `bluez-utils` instalados.
- **HDR**: Si tienes pantalla HDR, revisa `cm_auto_hdr` en `hyprland.conf` y configura mpv con `--target-colorspace-hint-mode=source`.

---

## 📌 Notas Finales

Este conjunto de dotfiles está diseñado para ser **una experiencia de usuario coherente, hermosa y productiva**. No es un “distro” ni un sistema pesado — es un **entorno de trabajo personalizado para desarrolladores, creadores y usuarios exigentes** que valoran el control, la estética y la eficiencia.

¡Disfruta tu nuevo escritorio!

---

> *“La belleza está en los detalles. La productividad, en la simplicidad.”*

---

✅ **Actualizado para Hyprland v0.40+**  
✅ **Compatible con Arch Linux y derivados**

