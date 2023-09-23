# #/bin/env bash

export SDL_VIDEODRIVER=wayland
export LIBVA_DRIVER_NAME=nvidia
export XDG_SESSION_TYPE=wayland
export GBM_BACKEND=nvidia-drm
export GDK_BACKEND=wayland
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export WLR_RENDERER=vulkan
export WLR_NO_HARDWARE_CURSORS=1
export MOZ_ENABLE_WAYLAND=1
#export XWAYLAND_NO_GLAMOR=1

dbus-run-session sway --unsupported-gpu
