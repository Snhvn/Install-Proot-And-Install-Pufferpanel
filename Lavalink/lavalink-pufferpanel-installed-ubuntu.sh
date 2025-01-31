#!/bin/bash
clear
echo "Đợi 3s để cài đặt/Wait 3s to install"
sleep 3

clear
echo "Loading..... Package/Đang Tải..... Package"
apt update -y && apt install sudo && apt install wget && apt install curl
echo "Đã tải xong package/Package downloaded"
sleep 1
echo "Tiếp theo tải lavalink/Next download lavalink"
echo "Thư mục mới tạo tên là 'Lavalink-Puffer'/Newly created folder named 'Lavalink-Puffer'"
sleep 1 
mkdir Lavalink-Puffer
clear
echo -e "Nhập phiên bản Lavalink/Enter Lavalink version"
read versionlavalink
echo -e "Your version is Lavalink-V3 or Lavalink-V4 choose 1 of 2/Phiên bản của bạn là Lavalink-V3 hoặc Lavalink-V4 chọn 1 trong 2"
read v3v4
cd Lavalink-Puffer
echo "Bắt đầu tải file Lavalink.jar/Start downloading Lavalink.jar file"
wget -O Lavalink-$version.jar https://github.com/lavalink-devs/Lavalink/releases/download/$versionlavalink/Lavalink.jar
echo "Đã Tải Xong/Download completed"
echo "Tiếp theo tải application.yml/Next download application.yml"

