#!/bin/bash

# Fechar todas as instâncias do Polybar
killall -q polybar

# Esperar a barra ser encerrada completamente
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Condição para escolher qual barra carregar
if [[ "$1" == "one" ]]; then
    # Carregar apenas a terceira barra (bar3)
    polybar -c ~/.config/polybar/one.ini &
else
    # Carregar bar1 e bar2 juntas
    polybar -c ~/.config/polybar/config.ini barLeft &
    polybar -c ~/.config/polybar/config.ini barRight &
fi

