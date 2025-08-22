#!/bin/bash
clear
echo "!!Lưu ý: Đây là để chuyển đổi port vnc 5901 sang port được random (ví dụ port: 25678)"
echo "!!Để giúp làm mượt hơn để treo web hoặc chạy languages j đó bla bla"
echo "!!Đọc xong lưu ý rồi hãy chờ tầm 3s để bắt đầu cài"
sleep 3
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'


apt update && apt upgrade -y
apt install -y lxde tightvncserver socat
echo -e "${YELLOW}tạo pass vnc cho user hiện tại...., nhớ đặt mật khẩu cho root r đặt luôn cho pass vnc${NC}"
vncpasswd
echo -e "${YELLOW} Tạo port cho vnc 5901 (bắt buộc phải nhập nếu kh bn sẽ bể zái)"
echo "Nhớ đọc ở đầu khi mới bắt đầu vào .sh để chính xác port nếu kh sẽ bị lỗi"
read port
if [[ -z "$port" ]]; then
    echo "M chx nhập port nên sẽ exit .sh, chạy lại file sh đi😈!"
    exit 1
fi
vncserver :1
vncserver -kill :1


cat > ~/.vnc/xstartup <<EOF
#!/bin/bash
xrdb $HOME/.Xresources
startlxde &
EOF
chmod +x ~/.vnc/xstartup

echo "${YELLOW}Đang start port $port cho vnc 5901...."
nohup socat TCP-LISTEN:$port,fork TCP:127.0.0.1:5901 &
echo "${GREEN}Đã lưu file nohup để chạy nền port ở $(pwd)"
clear
echo -e "${GREEN}VNC server đã được cài đặt và chạy trên port $port.${NC}"
echo -e "${YELLOW}Kết nối bằng VNC Viewer: 0.0.0.0:$port.${NC}"
vncserver :1
echo "!!Nếu kh có dịch vụ nào kh cho bn free tcp thì tôi sẽ chỉ bn"
echo " - Dùng lệnh 'ssh -R root:$port:localhost:$port serveo.net' để kết nối tcp vnc"
echo "!!Khi dùng lệnh xong rồi thì ip của nó là
