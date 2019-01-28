#
# Sets perferred defaults on MaxOS.
#

#Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1

# Show all files.
defaults write com.apple.finder AppleShowAllFiles YES

# Show the ~/Library directory.
chflags nohidden ~/Library

