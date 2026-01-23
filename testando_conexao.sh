#!/bin/bash

while true; do
    if ping -c 1 google.com > /dev/null 2>&1; then
        echo "$(date) - Internet OK" >> ~/my_scripts/conexao.log
    else
        echo "$(date) - Internet CAIU" >> ~/my_scripts/conexao.log
    fi
    
    # Espera 5 segundos antes de testar de novo
    sleep 5
done
