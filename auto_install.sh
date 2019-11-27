#!/bin/sh

#chsh -s $(which zsh)
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
rm ~/.vimrc && ln ~/freebsd_config/dots/vimrc ~/.vimrc
rm ~/.zshrc && ln ~/freebsd_config/dots/zshrc ~/.zshrc
rm ~/.p10k.zsh && ln ~/freebsd_config/dots/p10k.zsh ~/.p10k.zsh
