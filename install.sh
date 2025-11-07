#!/bin/bash
set -e  # Para o script se der erro

#Detecta o diretório onde o script está localizado
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Stopping Klipper service."
sudo systemctl stop klipper

echo "Copiando arquivos..."
cp "$SCRIPT_DIR/menu.py" ~/klipper/klippy/extras/display/menu.py
cp "$SCRIPT_DIR/virtual_sdcard.py" ~/klipper/klippy/extras/virtual_sdcard.py
cp "$SCRIPT_DIR/sovol-menu.cfg" ~/printer_data/config/lcd/sovol-menu.cfg

echo "Starting Klipper service."
sudo systemctl start klipper

echo "Concluído!"
