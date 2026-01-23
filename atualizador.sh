#!/bin/bash

echo "======================================="
echo " Iniciando a atualização do sistema... "
echo "======================================="

# comando principal
sudo pacman -Syu && sudo pacman -Sc

echo "============================================"
echo " Sistema atualizado e limpo! Bom trabalho!! "
echo "============================================"
