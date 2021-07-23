#!/bin/bash

sudo apt-get update
sudo apt-cache search boost
sudo apt-get -y install libboost-dev 
sudo apt-get -y install libboost-all-dev 
sudo apt-get -y install g++ automake
sudo apt-get -y install libqt4-dev libxpm-dev libaudio-dev libxt-dev libpng-dev libglib2.0-dev libfreetype6-dev libxrender-dev libxext-dev libfontconfig-dev libxi-dev
sudo apt-get -y install libqt4-sql-sqlite 
sudo apt-get -y install rar unrar p7zip
sudo apt-get -y install nautilus-open-terminal
sudo apt-get -y install build-essential
#sudo apt-get -y install xorg-dev
sudo apt-get -y install flex bison tcsh

sudo apt-get -y install libpng16-dev  
sudo apt-get -y install libpng12-dev
sudo apt-get -y install libglib2.0-dev
sudo apt-get -y install zlib*
sudo apt-get -y install libfreetype6-dev
sudo apt-get -y install libfontconfig1-dev

#extra add
sudo apt install -y zsh git vim #qtcreator 
sudo apt install -y python-setuptools python-dev build-essential 
sudo pip install --upgrade pip 
#extra end

sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
sudo dpkg --configure -a
sudo apt-get autoclean
sudo apt-get clean

#tar -xvaf bison-2.7.1.tar.gz
#cd bison-2.7.1
#./configure
#sudo ldconfig
#make
#sudo make install
#cd ..


tar -xvaf rcssserver-16.0.0.tar.gz
cd rcssserver-16.0.0
./configure --with-boost-libdir=/usr/lib/x86_64-linux-gnu 
sudo ldconfig
make
sudo make install


cd ..
tar -xvaf rcsslogplayer-15.2.0.tar.gz
cd rcsslogplayer-15.2.0
./configure --disable-gl --with-boost-libdir=/usr/lib/x86_64-linux-gnu
sudo ldconfig
make
sudo make install

cd ..
tar -xvaf rcssmonitor-15.2.0.tar.gz
cd rcssmonitor-15.2.0
./configure --with-boost-libdir=/usr/lib/x86_64-linux-gnu
sudo ldconfig
make
sudo make install

cd ..
#extra add
#安装rcsclib 
if [ -d librcsc-4.1.0 ]  
then
sudo apt-get install nautilus-open-terminal 
	rm  -r  librcsc-4.1.0
fi
tar -zxvf librcsc-4.1.0.tar.gz
cd librcsc-4.1.0
./configure
make -j4
sudo make install
sudo ldconfig
cd ..

#安装阵型修改器
if [ -d fedit2-0.0.1 ] 
then
	rm  -r  fedit2-0.0.1
fi
tar -zxvf fedit2-0.0.1.tar.gz
cd fedit2-0.0.1
./configure CPPFLAGS=-std=c++0x
make -j4
sudo make install
sudo ldconfig
cd ..

#安装 soccerwindow2
if [ -d soccerwindow2-5.1.0 ]
then 
	rm -r soccerwindow2-5.1.0
fi
tar -zxvf soccerwindow2-5.1.0.tar.gz
cd soccerwindow2-5.1.0

make -j4
sudo make install

#将lib添加到搜索路径

sudo echo "include /etc/ld.so.conf.d/*.conf
/usr/lib
/usr/local/lib
">ld.so.conf
sudo rm   /etc/ld.so.conf
sudo mv  ld.so.conf  /etc

sudo ldconfig
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
echo finished！
#extra end
