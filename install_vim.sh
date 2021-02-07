#!/bin/bash

sudo apt-get remove --purge vim vim-runtime vim-gnome vim-tiny vim-gui-common
sudo rm -rf /usr/local/share/vim /usr/bin/vim

sudo apt-get install -y liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev libncurses5-dev libatk1.0-dev libx11-dev libxpm-dev libxt-dev python3.8-dev

git clone https://github.com/vim/vim ~/vimtemp
cd ~/vimtemp
git pull && git fetch

./configure \
--with-features=huge \
--enable-multibyte \
--enable-rubyinterp=yes \
--enable-perlinterp=yes \
--enable-luainterp=yes \
--enable-cscope \
--prefix=/usr/local \
--enable-python3interp=yes \
--with-python3-config-dir=/usr/lib/python3.8/config-3.8m-x86_64-linux-gnu \
--enable-gui=auto \
--with-x \
--enable-fontset \
--enable-largefile \
--disable-netbeans \
--with-compiledby="Mateusz Kalkowski" \
--enable-fail-if-missing

make && sudo make install

rm -rf ~/vimtemp

sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim