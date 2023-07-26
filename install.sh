#!/data/data/com.termux/files/usr/bin/bash

apt-get update
apt-get  --assume-yes upgrade
apt-get  --assume-yes install coreutils gnupg wget
if [ ! -f "$PREFIX/etc/apt/sources.list.d/r-termux-adb.list" ]; then
  mkdir -p $PREFIX/etc/apt/sources.list.d
  echo -e "deb https://rohitverma882.github.io termux extras" > $PREFIX/etc/apt/sources.list.d/r-termux-adb.list
  wget -qP $PREFIX/etc/apt/trusted.gpg.d https://rohitverma882.github.io/rohit.gpg
  apt update
  apt install r-termux-adb
else
  echo "Repo already installed"
  apt install r-termux-adb
fi

echo "done!"