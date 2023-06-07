#!/bin/bash


./install_pkg.sh
./restore_config.sh
./restore_bs.sh



sudo systemctl enable NetworkManager

