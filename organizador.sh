#!/bin/bash

## criando pastas
mkdir -p ~/Imagens
mkdir -p ~/Documentos

## movendo arquivos
### documentos
for arquivo in ~/Downloads/*.pdf; do
    if [ -e "$arquivo" ]; then
        mv "$arquivo" ~/Documentos/
    fi
done

### imagens
for arquivo in ~/Downloads/*.jpg ~/Downloads/*.png ~/Downloads/*.gif; do
    if [ -e "$arquivo" ]; then
        mv "$arquivo" ~/Imagens/
    fi
done

echo "organização concluída!!"

## FIM
