# personal config files for freeBSD

Change "quaterly" to "latest" in line 11:

    cp /etc/pkg/FreeBSD.conf /usr/local/etc/pkg/repos/FreeBSD.conf
    vi /usr/local/etc/pkg/repos/FreeBSD.conf

Update system and etc.:

    freebsd-update fetch install
    portsnap fetch extract
    pkg update
    
Install packages:

    pkg install zsh vim git xorg nerd-fonts firefox
    
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
    
Set zsh to default:
    
    chsh -s $(which zsh)





Firefox settings (if srcolling not smooth):

    in: about:config
  
    set: layers.acceleration.force-enabled true
