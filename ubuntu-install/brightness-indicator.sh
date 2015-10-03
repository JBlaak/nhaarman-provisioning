if [ "$brightness" = "y" ] || [ "$brightness" = "" ] ;
then
  sudo apt-get install gnome-settings-daemon
  wget http://ppa.launchpad.net/indicator-brightness/ppa/ubuntu/pool/main/i/indicator-brightness/indicator-brightness_0.4~bzr11~ubuntu15.04.1_all.deb --output-document=indicator.deb
  sudo dpkg -i indicator.deb
  rm indicator.deb
fi
