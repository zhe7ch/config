# personal config files for freeBSD

Change "quaterly" to "latest" in line 11:

    vi /etc/pkg/FreeBSD.conf

Update system and etc.:

    freebsd-update fetch install
    portsnap fetch extract
    pkg update
    
Install packages:

    pkg install zsh vim git xorg nerd-fonts
    
Set zsh to default:
    
    chsh -s $(which zsh)
