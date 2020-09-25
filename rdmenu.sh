#!/bin/sh

cd /usr/ports/x11/dmenu/
sudo make deinstall fetch extract
sudo cp ~/dmenu/* /usr/ports/x11/dmenu/work/freebsd-dmenu*/
sudo make install clean
