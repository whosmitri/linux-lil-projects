#!/bin/bash

## definindo a data
DATA=$(date +%Y-%m-%d)

## definindo nome do arquivo
ARQUIVO_FINAL="backup_${DATA}.tar.gz"

## criando a pasta se ela não existir
mkdir -p ~/Backups

echo "==========================================="
echo " Começando backup da pasta ~/Arquivados... "
echo "==========================================="

# fazendo backup da pasta 'Arquivados'
tar -czf ~/Backups/$ARQUIVO_FINAL ~/Arquivados

## retornando resultados para o usuário
if [ -f "~/Backups/$ARQUIVO_FINAL" ]; then
  echo "================================="
  echo " Backup concluído com sucesso!! "
  echo "================================="
else
  echo "========================"
  echo " Erro ao fazer o backup "
  echo "========================"
fi

# FIM
