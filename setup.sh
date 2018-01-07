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
  ln -s ~/linuxmint-mac-setup/dotfiles/vimrc ~/.vimrc
  echo ".vimrc linked"
fi

if [ ! -f ~/.tmux.conf ]; then
  ln -s ~/linuxmint-mac-setup/dotfiles/tmux.conf ~/.tmux.conf
  echo ".tmux.conf linked"
fi

if [ ! -f /usr/local/go/bin/go ]; then
  cd ~/Downloads
  wget https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz
  sudo tar -C /usr/local -xzf go1.9.1.linux-amd64.tar.gz
  echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
fi

if [ ! -f /usr/bin/node ]; then
  curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
  sudo apt-get install -y nodejs
fi
