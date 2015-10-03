if [ "$php" = "y" ] || [ "$php" = "" ] ;
then 
  sudo apt-get install -y php5 
  sudo apt-get install -y php5-curl 
  sudo apt-get install -y php5-mcrypt 
  sudo apt-get install -y php5-mysql 
  sudo apt-get install -y npm 
  sudo apt-get install -y ruby-full 
  sudo apt-get install -y sass 
  sudo apt-get install -y curl
  sudo curl -sS https://getcomposer.org/installer | php -- --install-dir=/opt/composer/
  sudo sh -c "echo 'export PATH=/opt/composer:$PATH' >> ~/.env"
fi
