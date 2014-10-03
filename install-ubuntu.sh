sudo sh -c 'echo "deb http://archive.canonical.com/ubuntu trusty partner" > /etc/apt/sources.list.d/canonical_partner.list'
sudo dpkg --add-architecture i386

wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
sudo dpkg -i erlang-solutions_1.0_all.deb

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y suckless-tools
sudo apt-get install -y xmonad gnome-panel
sudo apt-get install -y exuberant-ctags
sudo apt-get install -y curl

sudo apt-get install -y acpi

sudo apt-get install -y skype

sudo apt-get install -y fonts-inconsolata
sudo fc-cache -fv

sudo apt-get install -y libncurses5-dev
sudo apt-get install -y rebar

sudo apt-get install -y cabal-install

sudo apt-get install -y erlang erlang-base-hipe erlang-doc erlang-manpages

sudo apt-get install -y bridge-utils


sudo add-apt-repository ppa:docker-maint/testing
sudo apt-get update
sudo apt-get install -y docker.io

sudo add-apt-repository ppa:cassou/emacs
sudo apt-get update

sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg

sudo apt-get install -y libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
