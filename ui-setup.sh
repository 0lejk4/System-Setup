#!/bin/sh

sudo apt-get install arc-theme breeze-cursor-theme docky numix-icon-theme-circle
( cd ~/.icons ; git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git )
( cd /usr/share/themes/ ; git clone https://github.com/tiansin/X-Arc-Darker )
tar -xf ./themes/McOS-Mint-Cinnamon-Edition-master.tar.xz -C /usr/share/themes/
tar -xf ./icons/OSX_ONE9.2.tar.xz -C /usr/share/icons/