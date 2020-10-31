# config files for freeBSD

Change "quaterly" to "latest" in line 11:

    mkdir -p /usr/local/etc/pkg/repos
    cp /etc/pkg/FreeBSD.conf /usr/local/etc/pkg/repos/
    vi /usr/local/etc/pkg/repos/FreeBSD.conf

Update system and etc.:

    freebsd-update fetch install
    portsnap fetch extract
    pkg update
    
Install packages:

    pkg install sudo zsh vim git xorg nvidia-driver firefox noto nerd-fonts feh alacritty rsync
    
For Nvidia: 

    echo 'nvidia-modeset_load="YES"' >> /boot/loader.conf 
    
locale settings: 
    
    ~/.login_conf
    
    me:\
        :charset=UTF-8:\
        :lang=en_US.UTF-8:
        
fix cursor size:
    move icons/default/ folder to /usr/local/share/icons/
    
Config softwares:
    
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
    
Set zsh to default:
    
    chsh -s $(which zsh)


xorg dpi setting:
- in ~/.Xresources:
    
        Xft.dpi: 192
- add in ~/.xinitrc

        xrdb -merge ~/.Xresources
TTF font files destination:

    /usr/local/share/fonts/TTF


Firefox settings (if srcolling not smooth):

    in: about:config
  
    set: layers.acceleration.force-enabled true
