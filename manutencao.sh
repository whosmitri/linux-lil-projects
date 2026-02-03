#!/bin/bash

# limpa o terminal antes de mostrar os dados
clear

# menu
echo "============================="
echo " MONITOR DE SAÚDE DO SISTEMA "
echo "============================="
echo "Data: $(date +'%d/%m/%Y %H:%M:%S')"
echo "============================="

# mostra uso dos discos de forma limpa
echo -e "\n[ USO DE DISCO ]"
# o "grep" filtra e o "column -t" deixa tudo alinhado como tabela
df -h | grep -E '^/dev/sd|Filesystem' | column -t

# mostra uso da memória RAM
echo -e "\n[ USO DE MEMÓRIA RAM ]"
free -h

echo -e "\n=========================="
echo " Monitoramento concluído! "
echo "=========================="
