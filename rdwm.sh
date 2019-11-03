#!/bin/sh

cd /usr/ports/x11-wm/dwm/
sudo make deinstall fetch extract
sudo cp /home/zy/freebsd_config/dwm/* /usr/ports/x11-wm/dwm/work/dwm-6.2/
sudo make install clean
