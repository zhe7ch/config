#!/bin/sh

cd /usr/ports/x11-wm/dwm/
sudo make deinstall fetch extract
sudo cp ~/dwm/* /usr/ports/x11-wm/dwm/work/dwm*/
sudo make install clean
