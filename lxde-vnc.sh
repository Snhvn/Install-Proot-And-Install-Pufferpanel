#!/bin/bash
clear

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'


apt update && apt upgrade -y


apt install -y lxde tightvncserver


echo -e "${YELLOW}tạo pass vnc cho user hiện tại...${NC}"
vncpasswd
echo -e "${YELLOW} Tạo port cho vnc (bắt buộc phải nhập nếu kh bn sẽ bể zái)"
read port
vncserver :1
vncserver -kill :1


cat > ~/.vnc/xstartup <<EOF
#!/bin/bash
xrdb $HOME/.Xresources
startlxde &
EOF
chmod +x ~/.vnc/xstartup

apt install -y socat
nohup socat TCP-LISTEN:$port,fork TCP:127.0.0.1:5901 &

clear
echo -e "${GREEN}VNC server đã được cài đặt và chạy trên port $port.${NC}"
echo -e "${YELLOW}Kết nối bằng VNC Viewer: 0.0.0.0:$port.${NC}"
