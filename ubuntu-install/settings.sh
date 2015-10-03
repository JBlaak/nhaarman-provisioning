# Don't let gedit create ~ files
gsettings set org.gnome.gedit.preferences.editor create-backup-copy false 

# Disable HUD shortcut
dconf write /org/compiz/integrated/show-hud '[""]' 

# Ignore closing of the lid
printf "\nHandleLidSwitch=ignore" | sudo tee -a /etc/systemd/logind.conf
sudo restart systemd-logind
