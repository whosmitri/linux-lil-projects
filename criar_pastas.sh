#!/bin/bash

## menu
echo "=============================="
echo " CRIADOR DE PASTAS INTERARIVO "
echo "=============================="

## pergunta o nome
while [ -z "$NOME" ]; do
  read -p "Nome da nova pasta: " NOME
  if [ -z "$NOME" ]; then
    echo "Espere! nome da pasta não pode ser vazio. Tente de novo."
  fi
done

## pergunta o destino mas sugere o diretório atual (.) como padrão
read -p "Onde criar (pressione 'Enter' para usar o diretório atual): " DESTINO_INPUT

## se o DETSINO_INPUT estiver vazio, a variável DESTINO é "."
DESTINO=${DESTINO_INPUT:-.}

## criando a pasta
if mkdir -p "$DESTINO/$NOME"; then
  echo "-------------------------"
  ## 'realpath' mostra o caminho completo
  echo "✅ Sucesso! Pasta '$NOME' criada em: $(realpath "$DESTINO")"
else
  echo "-------------------------"
  echo "Ops!! Erro ao criar a pasta. Verifique as permissões e as entradas."
fi
