#!/bin/sh

function logWarn() {
        START='\033[01;33m'
        END='\033[00;00m'
        MESSAGE=${@:-""}
        echo -e "${START}${MESSAGE}${END}"
}

function logInfo() {
        START='\033[01;32m'
        END='\033[00;00m'
        MESSAGE=${@:-""}
        echo -e "${START}${MESSAGE}${END}"
}

function logError() {
        START='\033[01;31m'
        END='\033[00;00m'
        MESSAGE=${@:-""}
        echo -e "${START}${MESSAGE}${END}"
}

function log() {
        MESSAGE=${@:-""}
        echo -e "${MESSAGE}"
}

logInfo "Iniciando Script..."

FILEJSON=/tmp/example.json

if [ -f "$FILEJSON" ]; then
    logInfo "Archivo ya Existe (Finaliza Script)"
    exit
fi

logWarn "Ingrese Dato1"
read DATA1
log ""

logWarn "Ingrese Dato2"
read DATA2
log ""

while true; do
    read -p "Desea Escribir el Archivo S/N?" yn
    case $yn in
        [Ss]* ) logInfo "Continua la Ejecución. !"; break;;
        [Nn]* ) logError "Finaliza la Ejecución. !"; exit;;
        * ) logWarn "Seleccione Si o No.";;
    esac
done

cat > $FILEJSON <<EOF
{
      "info": {
          "data1": "$DATA1",
          "data2": "$DATA2"
      }
}
EOF
logInfo "Creado Archivo JSON."
log ""
logInfo "Script Completado."
