

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "


# dark mode
defaults write /Library/Preferences/.GlobalPreferences AppleInterfaceTheme Dark
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

######################################################################################
###DOCK
######################################################################################
#dock autohide
defaults write com.apple.dock autohide -bool true

# dock animation speed
defaults write com.apple.dock autohide-time-modifier -float 0.3
killall Dock

# dock time before running animation
defaults write com.apple.dock autohide-delay -float 0

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36
# Enable dock magnification
defaults write com.apple.dock magnification -int 1

# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
#defaults write com.apple.dock persistent-apps -array

######################################################################################
###Mouse and Keyboard
######################################################################################
# tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
# increase keyboard repeat
defaults write -g InitialKeyRepeat -int 20 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 2 # normal minimum is 2 (30 ms)
