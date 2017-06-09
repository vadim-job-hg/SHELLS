#Install Gource in Ubuntu
========================
#Go to the folder.... and
#see http://tylerfrankenstein.com/code/install-gource-ubuntu-1010-visualize-git-repo

sudo apt-get update
sudo apt-get install libsdl2-dev libsdl2-image-dev libpcre3-dev libfreetype6-dev libglew-dev libglm-dev libboost-filesystem-dev libpng12-dev libsdl1.2-dev libsdl-image1.2-dev libtinyxml-dev
./configure
make
sudo make install
cd /usr/bin
sudo ln -s /usr/local/gource/0.37/bin/gource
