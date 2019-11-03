#!/bin/sh

cd /usr/ports/x11/sterm/
sudo make deinstall fetch extract
sudo cp /home/zy/freebsd_config/st/* /usr/ports/x11/sterm/work/st-0.8.2/
sudo make install clean
