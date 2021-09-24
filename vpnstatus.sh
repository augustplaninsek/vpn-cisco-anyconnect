#!/bin/zsh
VPNSTATUS=$(/opt/cisco/anyconnect/bin/vpn status | awk 'NR == 6{print $4; exit}')
if [ "$VPNSTATUS" == "Disconnected" ];
then
    echo "{\"text\":\"Disconnected\",\"background_color\": \"0,0,0,0\"}"
else
    echo "{\"text\":\"Connected\",\"background_color\": \"23, 149, 16,255\"}"
fi
