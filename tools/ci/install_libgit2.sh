source_url='https://github.com/libgit2/libgit2/archive/refs/tags/v0.28.4.zip'

apt update
apt install -y cmake unzip libssl-dev

mkdir ~/libgit2
cd ~/libgit2
wget -O libgit2.zip "$source_url"
unzip libgit2.zip
cd libgit2-*
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr/local ..
make
make install
