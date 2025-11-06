#!/bin/bash
# Instalar scripts modificados no Klipper

echo -e "${YELLOW}Stopping Klipper service.${NC}"
sudo service klipper stop

echo "Copiando arquivos..."
cp menu.py ~/klippy/extras/display/menu.py
cp virtual_sdcard.py ~/klippy/extras/virtual_sdcard.py
cp sovol-menu.cfg ~/printer_data/config/lcd/sovol-menu.cfg

echo -e "${YELLOW}Starting Klipper service.${NC}"
sudo service klipper start

echo "Concluído!"
