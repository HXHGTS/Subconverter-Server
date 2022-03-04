#!/bin/sh

echo 正在下载并安装Subconverter. . .

wget https://github.com/tindy2013/subconverter/releases/latest/download/subconverter_linux64.tar.gz -O subconverter_linux64.tar.gz

tar -zxvf subconverter_linux64.tar.gz

rm -f subconverter_linux64.tar.gz

cd /root/subconverter && chmod +x subconverter

echo 正在写入配置文件. . .

curl https://raw.githubusercontent.com/HXHGTS/Subconverter-Server/main/pref.toml > /root/subconverter/pref.toml

curl https://raw.githubusercontent.com/HXHGTS/Subconverter-Server/main/subconverter.service > /etc/systemd/system/subconverter.service

echo 正在启动Subconverter并写入开机引导. . .

systemctl daemon-reload

systemctl enable subconverter

systemctl start subconverter

exit 0
