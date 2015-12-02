# Don't let gedit create ~ files
gsettings set org.gnome.gedit.preferences.editor create-backup-copy false 

# Disable auto-opening Nautilus window after auto-mount
gsettings set org.gnome.desktop.media-handling automount-open false

# Disable sticky edges
dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-capture-mouse false

# Default Nautilus to list view
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'

# Workspaces
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2

# Disable HUD shortcut
dconf write /org/compiz/integrated/show-hud '[""]' 

# Ignore closing of the lid
printf "\nHandleLidSwitch=ignore" | sudo tee -a /etc/systemd/logind.conf
sudo restart systemd-logind

# Don't immediately lock after turning off the screen
gsettings set org.gnome.desktop.screensaver lock-delay 60
