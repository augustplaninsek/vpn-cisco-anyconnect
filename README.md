# Shell script to toggle Cisco Anyconnect VPN connection

For use on Mac OS with ZSH.

Intended for use with BetterTouchTool Widget.

## Configuration

In file `vpn.sh` change `HOST`, `USERNAME` and `PASSWORD`.

## Toggle connection

```
sh vpn.sh
```

## Get status

```
sh vpnstatus.sh
```

## BetterTouchTool Widget configuration

In `btt-vpn-widget.json` file change `<PATH_TO_vpn.sh>` and `<PATH_TO_vpnstatus.sh_SCRIPT>`

Import preset to BetterTouchTool
