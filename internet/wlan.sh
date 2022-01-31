# ip link set wlp3s0 up
# iwlist wlp3s0 scan | grep ESSID:

WLAN_NAME="name"
WLAN_PSWD="pswd"

yes | apt install network-manager
nmcli device wifi connect $WLAN_NAME password $WLAN_PSWD
