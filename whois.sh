#!/bin/bash


if [ -z "$1" ]; then
    echo "Uso: $0 dominio.com"
    exit 1
fi

DOMINIO=$1


if ! command -v whois &> /dev/null; then
    echo "Erro: o comando 'whois' não está instalado."
    echo "Você pode instalar com: sudo apt install whois"
    exit 2
fi

echo "Consultando WHOIS para: $DOMINIO"
echo "==============================="
whois "$DOMINIO"
echo "==============================="
