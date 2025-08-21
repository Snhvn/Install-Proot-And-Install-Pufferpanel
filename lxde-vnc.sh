clear
echo -e "${RED}Downloading... Please Wait"
    apt update && apt upgrade -y
    apt install lxde -y
    apt install xrdp -y
    echo "lxsession -s LXDE -e LXDE" >> /etc/xrdp/startwm.sh
clear
    echo -e "${GREEN}Downloading and installation completed!"
    echo -e "${YELLOW}Select VNC Port"
    read selectedPort
 
    sed -i "s/port=5900/port=$selectedPort/g" /etc/xrdp/xrdp.ini
clear
    service xrdp restart
    clear
    echo -e "${GREEN}VNC Created And Started on Port $selectedPort"
