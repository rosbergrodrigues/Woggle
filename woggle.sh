#!/bin/ash
clear
if [[ -z "${1}" || -z "${2}" ]] || [[ "${1}" != "on" && "${1}" != "off" && "${1}" != "auto" ]]; then
 echo '-- [USO] ------------------------'
 echo '+                               +'
 echo '+ ./wifi.sh (on|off|auto) SSID  +'
 echo '---------------------------------'
 exit
fi

REDE=$(uci show wireless | grep -F "${2}'" | sed s/.ssid.*//g)
if [ -z "${REDE}" ]; then
 echo --------------------------
 echo + A rede nao encontrada  +
 echo --------------------------
 exit
fi

if [ "${1}" == "on" ]; then
 uci set ${REDE}.disabled=0; echo Ativando...
elif [ "${1}" == "off" ]; then
 uci set ${REDE}.disabled=1; echo Desativando...
elif [ "${1}" == "auto" ]; then
 case $(uci get ${REDE}.disabled) in
  1) uci set ${REDE}.disabled=0; echo Ativando... ;;
  *) uci set ${REDE}.disabled=1; echo Rede Desativando... ;;
 esac
fi
uci commit wireless; wifi
clear; echo 'Feito'
exit
































