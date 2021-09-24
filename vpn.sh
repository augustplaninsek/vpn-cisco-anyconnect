#!/bin/zsh
HOST=""
USERNAME=""
PASSWORD=""

VPNSTATUS=$(/opt/cisco/anyconnect/bin/vpn status | awk 'NR == 6{print $4; exit}')
if [ "$VPNSTATUS" == "Disconnected" ];
then
    echo "VPN is disconnected. Connecting..."
    $(osascript -e 'display notification "VPN is disconnected. Connecting..." with title "VPN"')
    $(printf "y\n${USERNAME}\n${PASSWORD}" | /opt/cisco/anyconnect/bin/vpn -s connect ${HOST})
else
    echo "VPN is connected. Disconnecting..."
    $(osascript -e 'display notification "VPN is connected. Disconnecting..." with title "VPN"')
    $(/opt/cisco/anyconnect/bin/vpn disconnect)
fi
