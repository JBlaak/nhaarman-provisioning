# Don't let gedit create ~ files
gsettings set org.gnome.gedit.preferences.editor create-backup-copy false 

# Disable auto-opening Nautilus window after auto-mount
gsettings set org.gnome.desktop.media-handling automount-open false

# Default Nautilus to list view
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'

# Disable HUD shortcut
dconf write /org/compiz/integrated/show-hud '[""]' 

# Ignore closing of the lid
printf "\nHandleLidSwitch=ignore" | sudo tee -a /etc/systemd/logind.conf
sudo restart systemd-logind
