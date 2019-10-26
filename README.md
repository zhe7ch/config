# personal config files for freeBSD

Change "quaterly" to "latest" in line 11:

    vi /etc/pkg/FreeBSD.conf


    freebsd-update fetch install
    portsnap fetch extract
    pkg update
    
    
    pkg install zsh vim xorg nerd-fonts
