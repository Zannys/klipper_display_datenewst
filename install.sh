#!/bin/bash
set -e  # Para o script se der erro

# 🧭 Detecta o diretório onde o script está localizado
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Stopping Klipper service."
sudo systemctl stop klipper

echo "Copiando arquivos..."
cp "$SCRIPT_DIR/menu.py" /home/sovol/klipper/klippy/extras/display/menu.py
cp "$SCRIPT_DIR/virtual_sdcard.py" /home/sovol/klipper/klippy/extras/virtual_sdcard.py
cp "$SCRIPT_DIR/sovol-menu.cfg" /home/sovol/klipper_config/display/sovol-menu.cfg

echo "Starting Klipper service."
sudo systemctl start klipper

echo "✅ Concluído!"
