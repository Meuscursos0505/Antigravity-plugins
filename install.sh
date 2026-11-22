#!/usr/bin/env bash
set -e

TARGET_PLUGINS_DIR="$HOME/.gemini/config/plugins"
TARGET_SKILLS_DIR="$HOME/.gemini/config/skills"
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLUGINS_DIR="$CURRENT_DIR/plugins"

mkdir -p "$TARGET_PLUGINS_DIR"
mkdir -p "$TARGET_SKILLS_DIR"

install_plugin() {
    local name="$1"
    local src="$PLUGINS_DIR/$name"
    if [ ! -d "$src" ]; then
        echo "Plugin not found: $name"
        return
    fi
    cp -r "$src" "$TARGET_PLUGINS_DIR/"
    echo "[✓] Plugin installed: $name"
}

if [ "$1" == "--all" ] || [ "$1" == "-a" ]; then
    echo "Installing all plugins into $TARGET_PLUGINS_DIR..."
    for d in "$PLUGINS_DIR"/*; do
        if [ -d "$d" ]; then
            install_plugin "$(basename "$d")"
        fi
    done
    echo "All plugins installed successfully!"
elif [ -n "$1" ]; then
    install_plugin "$1"
else
    echo "Usage: ./install.sh <plugin-name> | --all"
fi
