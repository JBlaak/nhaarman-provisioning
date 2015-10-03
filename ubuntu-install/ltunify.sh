if [ "$ltunify" = "y" ] || [ "$ltunify" = "" ] ;
then
  sudo apt-get install -y git gcc
  git clone https://git.lekensteyn.nl/ltunify.git
  cd ltunify
  make install-home
  cd ..
  rm -rf ltunify
  sudo apt-get remove -y gcc

  if [ "$devtools" = "n" ] ;
  then
    sudo apt-get remove -y git
  fi;
fi;
