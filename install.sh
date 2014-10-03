
pwd

sudo chown -R marknijhof:admin /usr/local

ln -s "$PWD/.emacs.d/" ~/.emacs.d
ln -s "$PWD/terminal/.inputrc" ~/.inputrc
ln -s "$PWD/terminal/.bashrc" ~/.bashrc
ln -s "$PWD/terminal/.profile" ~/.profile

git submodule update --init

git config --global user.name "Joakim Saelemyr"
git config --global user.email joakim.saelemyr@gmail.com
git config --global push.default simple


#Run from MacOS
#sudo nvram SystemAudioVolume=%80
