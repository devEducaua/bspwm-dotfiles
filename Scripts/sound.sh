#!/bin/bash

# Define o passo de volume
VOLUME_STEP=10
MINI_VOLUME=5

# Função para aumentar o volume
increase_volume() {
    pamixer -i $VOLUME_STEP
    dunstify -i GIBRISH "Volume aumentado para: $(pamixer --get-volume)%"
}

# Função para diminuir o volume
decrease_volume() {
    pamixer -d $VOLUME_STEP
    dunstify -i GIBRISH "Volume diminuído para: $(pamixer --get-volume)%"
}

mini_inc() {
    pamixer -i $MINI_VOLUME
    dunstify -i GIBRISH "Volume aumentado para: $(pamixer --get-volume)%"
}

mini_dec() {
    pamixer -d $MINI_VOLUME 
    dunstify -i GIBRISH "Volume diminuído para: $(pamixer --get-volume)%"
}
# Verifica os argumentos passados ao script
case "$1" in
    up)
        increase_volume
        ;;
    down)
        decrease_volume
        ;;
    mup)
        mini_inc
        ;;
    mdown) mini_dec
        ;;
    *)
        echo "Uso: $0 {up|down|mup|mdown}"
        exit 1
esac

