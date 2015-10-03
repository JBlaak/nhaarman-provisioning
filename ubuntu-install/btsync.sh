if [ "$btsync" = "y" ] || [ "$btsync" = "" ] ;
then
  wget https://download-cdn.getsync.com/stable/linux-x64/BitTorrent-Sync_x64.tar.gz --output-document=btsync.tar.gz
  mkdir btsync
  tar -xzf btsync.tar.gz -C btsync
  sudo mv btsync/ /opt/btsync
  rm btsync -r
  rm btsync.tar.gz

  /opt/btsync/btsync
  google-chrome-stable http://localhost:8888 > /dev/null &

  mkdir -p ~/.config/autostart
  touch ~/.config/autostart/btsync.desktop
  echo "
[Desktop Entry]
Type=Application
Name=Bittorrent Sync
Exec=/opt/btsync/btsync
X-GNOME-Autostart-enabled=true" >> ~/.config/autostart/btsync.desktop
fi
