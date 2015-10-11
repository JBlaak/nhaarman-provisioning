if [ "$latex" = "y" ] || [ "$latex" = "" ] ;
then
  sudo apt-get install -y texlive texlive-latex-extra texlive-math-extra
  sudo add-apt-repository ppa:blahota/texstudio -y
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get install -y texstudio
  sudo apt-get install -y texlive-bibtex-extra
fi
