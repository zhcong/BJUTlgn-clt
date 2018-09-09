#!/bin/bash
#安装

read -p "请输入学号: " username
read -sp"请输入密码: " passwd
echo -e
sed -i "s/学号/$username/g" lgn
sed -i "s/密码/$passwd/g" lgn
gzexe lgn
rm lgn~
sudo mv lgn /usr/bin
sudo chmod 755 /usr/bin/lgn
echo "安装完成"