if [ "$flux" = "y" ] || [ "$flux" = "" ] ;
then
  sudo add-apt-repository -y ppa:kilian/f.lux
  sudo apt-get update
  sudo apt-get install -y fluxgui
fi
