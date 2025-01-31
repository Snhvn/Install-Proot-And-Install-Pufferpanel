#!/bin/bash
clear
RED='\033[0;31m'
echo "------------------------"
echo "SNIPA VN"
echo "${RED}YouTube : https://youtube.com/@snipavn205"
echo "------------------------"
echo -e "Nhập phiên bản Lavalink/Enter Lavalink version"
read versionlavalink
echo -e "Your version is Lavalink-V3 or Lavalink-V4 choose 1 of 2/Phiên bản của bạn là Lavalink-V3 hoặc Lavalink-V4 chọn 1 trong 2.Hãy nhập v3 hoặc v4"
read v3v4
echo "Đợi 3s để cài đặt/Wait 3s to install"
sleep 3
clear
echo "Loading..... Package/Đang Tải..... Package"
apt update -y && apt install sudo && sudo apt install wget && sudo apt install curl && sudo apt install nano && sudo apt install openjdk-21-jdk 
echo "Đã tải xong package/Package downloaded"
sleep 1
echo "Tiếp theo tải lavalink/Next download lavalink"
echo "Thư mục mới tạo tên là 'Lavalink$v3v4-Puffer'/Newly created folder named 'Lavalink$v3v4-Puffer'"
sleep 1 
mkdir Lavalink$v3v4-Puffer
clear
cd Lavalink$v3v4-Puffer
echo "Bắt đầu tải file Lavalink.jar/Start downloading Lavalink.jar file"
wget -O Lavalink-$versionlavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/$versionlavalink/Lavalink.jar
echo "Đã Tải Xong/Download completed"
echo "Tiếp theo tải application.yml/Next download application.yml"
wget -O application.yml https://github.com/Snhvn/Install-Proot-And-Install-Pufferpanel/raw/refs/heads/main/Lavalink/application-$v3v4.yml
cd
clear
echo "------------------------"
echo "SNIPA VN"
echo "${RED}YouTube : https://youtube.com/@snipavn205"
echo "------------------------"
echo "Đã tải xong file application.yml vui lòng khởi Lavalink hoặc không :)))" 
