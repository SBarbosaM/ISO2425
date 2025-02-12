#!/bin/bash
#Script:Users.sh
#Autor:Sergi Barbosa Muñoz
#Fecha:11/02/2025

clear

uid_base=1000
fecha=$(date "+%d-%m-%Y")
hora=$(date "+%H:%M")
log_file="/tmp/logeventos"


echo "Informe de usuarios el día $fecha a las $hora"
total=0
while IFS=: read -r user x uid rest; do
  if [ "$uid" -ge "$uid_base" ]; then
    echo "$user - $uid"
    total=$((total + 1))
  fi
done < /etc/passwd
echo "Total: $total usuarios"
echo "$fecha – $hora – $(whoami) solicitó un informe de usuarios" >> $log_file

exit 0
