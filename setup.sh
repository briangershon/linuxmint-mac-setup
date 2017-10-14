#!/bin/bash

if [ ! -f /usr/bin/vim ]; then
  sudo apt install vim
fi

if [ ! -f /usr/bin/git ]; then
  sudo apt install git
fi

if [ ! -f /usr/bin/tmux ]; then
  sudo apt install tmux
fi

if [ ! -f /usr/bin/google-chrome ]; then
  sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/chrome.list'
  sudo sh -c 'wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
  sudo apt-get update
  sudo apt-get install google-chrome-stable
fi

if [ ! -f /usr/bin/atom ]; then
  sudo add-apt-repository ppa:webupd8team/atom
  sudo apt-get update
  sudo apt-get install atom
fi

if [ ! -f ~/.vimrc ]; then
  rm ~/.vimrc
  ln -s ~/linuxmint-mac-setup/dotfiles/vimrc ~/.vimrc
  echo ".vimrc linked"
fi

if [ ! -f ~/.tmux.conf ]; then
  rm ~/.tmux.conf
  ln -s ~/linuxmint-mac-setup/dotfiles/tmux.conf ~/.tmux.conf
  echo ".tmux.conf linked"
fi
