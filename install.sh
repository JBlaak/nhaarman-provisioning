read -p "Copy your ssh files to ~/.ssh and press [Enter] to start provisioning"

wget https://github.com/nhaarman/provisioning/archive/master.zip --output-document=provisioning.zip 
unzip provisioning.zip
cp -a provisioning-master/. ~/
cd ~/ubuntu-install
./ubuntu-install.sh

rm -r provisioning-master
rm provisioning.zip

# Clone provisioning in home folder
git clone git@github.com:nhaarman/provisioning.git ~/provisioning_git
cp -a ~/provisioning_git/. ~/
rm ~/provisioning_git -rf
